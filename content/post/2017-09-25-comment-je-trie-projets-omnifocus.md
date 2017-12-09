+++
title      = "Trier automatiquement ses projets par statut"
author     = "Pierre Morsa"
date       = "2017-09-25"
categories = [ "GTD Getting Things Done", "Technomagie" ]
draft      = false
+++

Comment trier ses projets dans OmniFocus ? Professionnel vs. personnel ? Par priorité ? Par date d'échéance ? Personnellement je les trie par statut. Si vous regardez l'image ci-dessous vous verrez que j'ai des dossiers nommés « active » (actifs), « stalled » (bloqué), « waiting for » (en attente), etc.

![Projets OmniFocus](/pictures/2017/09/projets-omnifocus.jpg)

Pourquoi ai-je choisi de trier mes projets de cette manière ? Parce que cela me permet d'identifier en un coup d'œil les projets sur lesquels je dois travailler, ceux que je dois débloquer, ceux qui sont en attente de quelque chose, etc.

Évidemment cette organisation est un peu pénible s'il faut trier manuellement les projets dans les dossiers en fonction de l'évolution de leur statut. C'est pourquoi j'ai écrit un script AppleScript appelé « housekeeping » qui va classer chaque projet automatiquement dans le bon dossier selon son statut. Vous trouverez le code du script ci-dessous. Je l'ai fait un peu à l'arrache, c'est loin d'être un exemple de code propre, et il faudra sûrement l'adapter un peu pour qu'il fonctionne chez vous, néanmoins j'espère qu'il peut vous aider si vous voulez faire quelque chose de similaire.

Ce script fait également d'autres choses : il définit la prochaine date de revue de manière plus « intelligente » : par exemple si la prochaine date de revue tombe un week-end il va déplacer la date de revue au lundi suivant, il va définir la fréquence de revue selon que le projet soit actif ou en attente, etc.

J'ai codé « en dur » certaines chaînes de caractères comme un gros goret, donc pour que le script fonctionne vous devez absolument avoir des dossiers nommés "active", "stalled", "waiting for", "deferred", "on hold", "completed", "dropped", "templates" et un contexte nommé "Waiting for". L'alternative étant d'éditer les chaînes de caractères dans le script utiliser d'autres noms. Il y a peut-être d'autres chose qu'il faudra vérifier pour qu'il fonctionne correctement. Pour rappel, ce genre de script est quasi impossible à débugger dans l'éditeur de scripts fourni en standard par Apple, à la place j'utilise Script Debugger de Late Night Software, un outil indispensable pour tout AppleScripter qui se respecte.

Et concernant le débat tabulations contre espaces, l'exemple ici utilise des espaces parce que les tabulations prenaient trop de place, mais mon script original utilise bien des tabulations !

Enfin il y a quelques bouts de code que j'ai piqué à gauche et à droite sur internet, mais je n'arrive plus à retrouver où, donc je tiens à m'en excuser auprès de leurs auteurs originaux. Les développeurs un peu expérimentés les reconnaîtront sûrement, parce que le style du code est clairement différent.

**Attention : je ne suis pas responsable des problèmes que peut occasionner ce script, utilisez-le à vos risques et périls !!!**

```
(*
  This script does the following:
  1. Sort projects in folders based on status
    - flagged
    - active
    - stalled
    - waiting for
    - defered
    - completed
    - dropped
  2. Set review date to now for:
    - Projects modified since last run
    - Projects moved

  3. Set review interval to weekly for:
    - Projects that are active, stalled or waiting for

  4. A few other things
*)

property fiveMinutes : 300
property oneDay : 86400
property sevenDays : 604800
property fourteenDays : 1209600
property twentyoneDays : 1814400
property sixtyDays : 51840000
property twelveWeeks : 7257600
property changeGracePeriod : 0 -- 240
property contextWaitingFor : {"waiting for"}
property contextStalled : {"object", "reference"}
-- if script was never run set last run to 5 minutes ago by default
property lastRun : (current date) - fiveMinutes
property putOnHoldIfWaitingForTooLong : sixtyDays

global theFlaggedFolder
global theActiveFolder
global theStalledFolder
global theWaitingForFolder
global theDeferredFolder
global theOnHoldFolder
global theCompletedFolder
global theDroppedFolder
global theTemplateFolder

global theWaitingForContext

property scriptSuiteName : "Projects Housekeeping"

tell application "OmniFocus"
  tell front document
    
    compact
    try
      -- set theFlaggedFolder to (first folder whose name is "flagged")
      set theActiveFolder to (first folder whose name is "active")
      set theStalledFolder to (first folder whose name is "stalled")
      set theWaitingForFolder to (first folder whose name is "waiting for")
      set theDeferredFolder to (first folder whose name is "deferred")
      set theOnHoldFolder to (first folder whose name is "on hold")
      set theCompletedFolder to (first folder whose name is "completed")
      set theDroppedFolder to (first folder whose name is "dropped")
      set theTemplateFolder to (first folder whose name is "templates")
      
      set theWaitingForContext to (first flattened context whose name is "Waiting For")
      
      set will autosave to false
      -- set selected sidebar tab to
      set projectsMoved to my moveActiveProjects(it, {})
      set projectsMoved to projectsMoved or my moveNonActiveProjects(it)
      set will autosave to true
    on error errText number errNum
      set will autosave to true
      display dialog "Error: " & errNum & return & errText
      return
    end try
    if projectsMoved is true then
      set msg to "Please review projects."
      my notify("Did some housekeeping!", msg)
    else
      set msg to "I had nothing to do."
    end if
  end tell
end tell
set lastRun to (current date)



on moveNonActiveProjects(theContainer)
  set projectsMoved to false
  using terms from application "OmniFocus"
    set theProjects to every flattened project of theContainer whose status is on hold ¬
      and singleton action holder is false
    repeat with aProject in theProjects
      if completed by children of aProject is true then
        -- do not complete projects when all tasks are done to avoid accidental completion
        set completed by children of aProject to false
      end if
      set theResult to my reviewIfTaskModified(aProject)
      if theResult is equal to 0 then
        my reviewMonthly(aProject)
      end if
      set isProjectMoved to my moveProject(aProject, theOnHoldFolder)
      set projectsMoved to projectsMoved or isProjectMoved
    end repeat
    
    set theProjects to every flattened project of theContainer whose status is done ¬
      and singleton action holder is false
    repeat with aProject in theProjects
      if completed by children of aProject is true then
        -- do not complete projects whene all tasks are done to avoid accidental completion
        set completed by children of aProject to false
      end if
      -- No need to change review interval
      set isProjectMoved to my moveProject(aProject, theCompletedFolder)
      set projectsMoved to projectsMoved or isProjectMoved
    end repeat
    
    set theProjects to every flattened project of theContainer whose status is dropped ¬
      and singleton action holder is false
    repeat with aProject in theProjects
      if completed by children of aProject is true then
        -- do not complete projects when all tasks are done to avoid accidental completion
        set completed by children of aProject to false
      end if
      -- No need to change review interval
      set isProjectMoved to my moveProject(aProject, theDroppedFolder)
      set projectsMoved to projectsMoved or isProjectMoved
    end repeat
  end using terms from
  return projectsMoved
end moveNonActiveProjects



on moveActiveProjects(theContainer)
  set projectsMoved to false
  --  log "Executing Housekeeping Script"
  using terms from application "OmniFocus"
    set theProjects to every flattened project of theContainer whose status is active ¬
      and singleton action holder is false
    set projectsMoved to my moveActiveProjectsProjects(theProjects)
  end using terms from
  return projectsMoved
end moveActiveProjects



on moveActiveProjectsProjects(theProjects)
  
  using terms from application "OmniFocus"
    set projectsMoved to false
    repeat with aProject in theProjects
      set projectContainer to container of aProject
      if (class of projectContainer is not folder or (class of projectContainer is folder ¬
        and projectContainer is not hidden)) then
        
        if folder of aProject is not theTemplateFolder then
          
          if completed by children of aProject is true then
            set completed by children of aProject to false
          end if
          
          my reviewIfTaskModified(aProject)
          
          -- Checks if there is a next task
          -- If yes, then get context of next task
          set theNextTask to next task of aProject
          set isNoNextTask to false
          set theNextTaskContextName to "****"
          set isAlreadyProcessed to false
          set isDeferredNextTask to false
          
          if theNextTask is missing value then
            set theActiveTasks to ¬
              (every flattened task of aProject whose completed is false ¬
                and number of tasks is equal to 0)
            if (count of theActiveTasks) is greater than or equal to 1 then
              set theActiveTask to item 1 of theActiveTasks
              if theActiveTask is not missing value then
                if defer date of theActiveTask is not missing value then
                  if defer date of theActiveTask is greater than (current date) then
                    set isDeferredNextTask to true
                  else
                    set theNextTask to theActiveTask
                    set theNextTaskContextName to name of context of theNextTask
                  end if
                else
                  set theNextTask to theActiveTask
                  set theNextTaskContextName to name of context of theNextTask
                end if
              else
                set isNoNextTask to true
              end if
            else -- project has no next tasks
              set isNoNextTask to true
              set theWaitingForTasks to (every flattened task of aProject whose completed is false)
              set isNoNextTask to true
              repeat with theWaitingForTask in theWaitingForTasks
                if context of theWaitingForTask is equal to theWaitingForContext then
                  set theNextTask to theWaitingForTask
                  set isNoNextTask to false
                  if context of theNextTask is not missing value then
                    set theNextTaskContextName to name of context of theNextTask
                  end if
                  exit repeat
                end if
              end repeat
              
            end if
          else
            -- If the next task is the project itself, consider there is no task left.
            if id of theNextTask is equal to id of root task of aProject then
              set isNoNextTask to true
            else
              set isNoNextTask to false
              if context of theNextTask is not missing value then
                set theNextTaskContextName to name of context of theNextTask
              end if
            end if
          end if
          
          -- 
          -- Process DEFERRED projects
          -- 
          if isAlreadyProcessed is false then
            if defer date of aProject is not missing value then
              set theCurrentDate to current date
              set theCurrentDate to theCurrentDate - (theCurrentDate's time)
              -- Second condition is to avoid the project being marked for review again and again 
              -- if review date is today
              if defer date of aProject is greater than or equal to my tomorrow() then
                my setNextReviewDate(aProject, defer date of aProject)
                set isProjectMoved to my moveProject(aProject, theDeferredFolder)
                set projectsMoved to projectsMoved or isProjectMoved
                set isAlreadyProcessed to true
              end if
            end if
          end if
          if isAlreadyProcessed is false then
            if isDeferredNextTask then
              if defer date of theActiveTask is greater than or equal to my tomorrow() then
                my setNextReviewDate(aProject, defer date of theActiveTask)
                set isProjectMoved to my moveProject(aProject, theDeferredFolder)
                set projectsMoved to projectsMoved or isProjectMoved
                set isAlreadyProcessed to true
              end if
            end if
          end if
          
          --
          -- Process WAITING FOR projects
          --
          if isAlreadyProcessed is false then
            if theNextTaskContextName is in contextWaitingFor then
              --
              -- ...then it is waiting for but if waiting for more than twenty one days...
              --
              set theTimeDifference to (current date) - (modification date of theNextTask)
              if theTimeDifference is greater than putOnHoldIfWaitingForTooLong ¬
                and putOnHoldIfWaitingForTooLong is not equal to 0 then
                --
                -- ...then we were patient enough, change status and move it to on hold
                --
                my reviewDaily(aProject)
                my setStatus(aProject, on hold)
                set isProjectMoved to my moveProject(aProject, theOnHoldFolder)
                set projectsMoved to projectsMoved or isProjectMoved
                set isAlreadyProcessed to true
              else
                --
                -- ...else it's really waiting for
                --
                if theTimeDifference is greater than sevenDays then
                  -- waiting for more than seven days? Review weekly
                  my reviewWeekly(aProject)
                else
                  -- waiting for less than one week? Review daily
                  my reviewDaily(aProject)
                end if
                set isProjectMoved to my moveProject(aProject, theWaitingForFolder)
                set projectsMoved to projectsMoved or isProjectMoved
                set isAlreadyProcessed to true
              end if
            end if
          end if
          
          --
          -- Process STALLED projects
          -- 
          if isAlreadyProcessed is false then
            if isNoNextTask is true or theNextTaskContextName is in contextStalled then
              my reviewDaily(aProject)
              set isProjectMoved to my moveProject(aProject, theStalledFolder)
              set projectsMoved to projectsMoved or isProjectMoved
              set isAlreadyProcessed to true
            end if
          end if
          
          --
          -- Process ACTIVE projects
          --
          if isAlreadyProcessed is false then
            my reviewDaily(aProject)
            if folder of aProject is not theActiveFolder then
              set isProjectMoved to my moveProject(aProject, theActiveFolder)
              set projectsMoved to projectsMoved or isProjectMoved
              set isAlreadyProcessed to true
            end if
          end if
          
        end if
      end if
      
    end repeat
  end using terms from
  return projectsMoved
end moveActiveProjectsProjects

(*
Changes the status of a project and logs it.
*)
on setStatus(aProject, aStatus)
  tell application "OmniFocus"
    tell front document
      if status of aProject is not aStatus then
        set status of aProject to aStatus
        log "Changed status of project: " & (name of aProject)
      end if
    end tell
  end tell
end setStatus

(*
  Moves a Project to a new folder
*)
on moveProject(aProject, aFolder)
  set projectMoved to false
  tell application "OmniFocus"
    tell front document
      if folder of aProject is not aFolder then
        my reviewNow(aProject)
        move aProject to (beginning of sections of aFolder)
        set projectMoved to true
        log "Moved project: " & (name of aProject)
      end if
    end tell
  end tell
  return projectMoved
end moveProject

(*
  Mark a project for review if a task has been modified
*)
on reviewIfTaskModified(aProject)
  tell application "OmniFocus"
    tell front document
      set theTasks to (every flattened task of aProject ¬
        whose modification date is greater than lastRun and completed is false)
      if (count of theTasks) is greater than 0 then
        my reviewNow(aProject)
        return 1
      else
        return 0
      end if
    end tell
  end tell
end reviewIfTaskModified

(*
  Gets tomorrow, midnight.
*)
on tomorrow()
  copy (current date) to theDate
  return (theDate + oneDay - (theDate's time))
end tomorrow

on reviewNow(aProject)
  set theNextReview to current date
  -- note: do not change review interval in this case
  my setNextReviewDate(aProject, theNextReview)
end reviewNow

on reviewDaily(aProject)
  set theNextReview to my tomorrow()
  tell application "OmniFocus"
    tell front document
      set _ri to {unit:(day), steps:(1), fixed:(false)}
      my setReviewInterval(aProject, _ri)
      my setNextReviewDate(aProject, theNextReview)
    end tell
  end tell
end reviewDaily

on reviewWeekly(aProject)
  -- Set the next weekly review to next Monday
set theNextReview to ¬
	DateOfThisInstanceOfThisWeekdayBeforeOrAfterThisDate(current date, Monday, 1)
	  
  using terms from application "OmniFocus"
    set _ri to {unit:(week), steps:(1), fixed:(false)}
  end using terms from
  tell application "OmniFocus"
    tell front document
      my setReviewInterval(aProject, _ri)
      my setNextReviewDate(aProject, theNextReview)
    end tell
  end tell
end reviewWeekly

(*
  Sets the next review date to the next first Monday of a Month
  (this month if first Monday not already passed)
  (next month if first Monday already passed)
*)
on reviewMonthly(aProject)
  copy (current date) to theNextReview
	if (weekday of theNextReview is Monday) ¬
	and (day of theNextReview ≤ 7) and (theNextReview > (current date)) then
    -- do nothing because next review is already first Monday and in the future
  else
    set theNextReview's day to 32
    set theNextReview's day to 1
    -- That stuff below is to always set the monthly review on the first Monday of the Month
    set dateOffset to {1, 0, 6, 5, 4, 3, 2}
    set theOffset to item ((weekday of theNextReview) as integer) of dateOffset
    set theNextReview's day to 1 + theOffset
    set theNextReview to theNextReview - (theNextReview's time)
    tell application "OmniFocus"
      tell front document
        set _ri to {unit:(month), steps:(1), fixed:(false)}
        my setReviewInterval(aProject, _ri)
        my setNextReviewDate(aProject, theNextReview)
      end tell
    end tell
  end if
end reviewMonthly

on setReviewInterval(aProject, _ri)
  tell application "OmniFocus"
    tell front document
      if review interval of aProject is not equal to _ri then
        set review interval of aProject to _ri
        log "Changed review interval: " & (name of aProject)
      end if
    end tell
  end tell
end setReviewInterval

(*
  Sets the review date for the project to the date specified, but only if:
  - the project's review date is greater than today (is in the future)
  - the project's review date is not already equal to the new review date
  If the review date is a Saturday or Sunday, sets it to the next Monday
*)
on setNextReviewDate(aProject, aDate)
  tell application "OmniFocus"
    tell front document
      -- Skip Saturdays and Sundays, use Monday instead, and remove Date's time.
      set aDate to (my skipWeekends(aDate)) - (aDate's time)
      -- Only change review date if it is greater than now and is different from the new date
      if next review date of aProject is greater than (current date) ¬
        and next review date of aProject is not equal to aDate then
        set next review date of aProject to aDate
        log "Changed review date: " & (name of aProject)
      end if
    end tell
  end tell
end setNextReviewDate

on skipWeekends(aDate)
  if weekday of aDate is Saturday then
    set aDate to aDate + 2 * oneDay
  else if weekday of aDate is Sunday then
    set aDate to aDate + oneDay
  end if
  return aDate
end skipWeekends

on DateOfThisInstanceOfThisWeekdayBeforeOrAfterThisDate(d, w, i) -- returns a date
  -- Keep an note of whether the instance value *starts* as zero
  set instanceIsZero to (i is 0)
  -- Increment negative instances to compensate for the following subtraction loop
  if i < 0 and d's weekday is not w then set i to i + 1
  -- Subtract a day at a time until the required weekday is reached
  repeat until d's weekday is w
    set d to d - days
    -- Increment an original zero instance to 1 if subtracting from Sunday into Saturday 
    if instanceIsZero and d's weekday is Saturday then set i to 1
  end repeat
  -- Add (adjusted instance) * weeks to the date just obtained and zero the time
  d + i * weeks - (d's time)
end DateOfThisInstanceOfThisWeekdayBeforeOrAfterThisDate

(*
  Uses Notification Center to display a notification message.
  theTitle – a string giving the notification title
  theDescription – a string describing the notification event
*)
on notify(theTitle, theDescription)
  display notification theDescription with title scriptSuiteName subtitle theTitle
end notify

```