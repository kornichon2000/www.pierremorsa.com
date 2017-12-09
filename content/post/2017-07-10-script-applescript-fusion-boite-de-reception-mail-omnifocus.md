+++
title      = "Un script AppleScript pour envoyer tous les emails vers OmniFocus"
author     = "Pierre Morsa"
date       = "2017-07-10"
categories = [ "GTD Getting Things Done", "Lifehacks", "Technomagie" ]
draft      = false
+++

Suite à [mon article sur OmniFocus 2](/post/2017-06-12-test-omnifocus-2), un lecteur m'a demandé si je pouvais partager le script qui me sert à fusionner les boîtes de réceptions de Apple Mail et OmniFocus 2. Le voilà.

**Attention 1 : à la première exécution le script va créer une tâche OmniFocus pour tous les emails dans la boîte de réception, si vous en avez beaucoup vous risquez de vous retrouver avec des milliers de tâches OmniFocus en plus !** Pour éviter ce problème, ne laissez pas vos vieux emails traîner dans la boîte de réception, déplacez-les vers un dossier Archive. 

**Attention 2 : n'exécutez jamais du code AppleScript sans en vérifier le contenu et la provenance, il peut être dangereux.**

**Attention 3 : vérifiez que vous comprenez ce que fait le script et que cela correspond à votre besoin. AppleScript requiert un certain niveau de connaissance technique. Je ne suis pas responsable de ce que le script peut faire sur votre machine.**

```
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

property pLastID : 0
property pInboxName : "INBOX"
property pArchiveBoxName : "Archive"

on run
	
	set cbs to ASCII character 92
	set crt to ASCII character 13
	
	tell application "Mail"
		set theMessage to ""
		set theFlaggedMessages to ¬
			(messages of mailbox pInboxName of first account) ¬
				whose flag index is equal to 5
		if (count of theFlaggedMessages) is greater than 0 then
			repeat with theMessage in theFlaggedMessages
				set theTask to my findOmnifocusTask(theMessage)
				if theTask is missing value then
					set flag index of theMessage to -1
					my archiveMessage(theMessage)
				end if
			end repeat
		end if
		set theInbox to mailbox pInboxName of first account
		set theInboxMessages to ¬
			(messages of mailbox pInboxName of first account) ¬
				whose id is greater than pLastID
		
		if (count of theInboxMessages) is greater than 0 then
			delay 10
			repeat with theMessage in theInboxMessages
				set theSender to sender of theMessage as string
				set theSubject to subject of theMessage as string
				set theID to id of theMessage
				set theTitle to theSender & " — " & theSubject
				set theNote to ("message://%3c" & message id of ¬
					theMessage & "%3e" & crt & crt) as rich text
				set theNote to (theNote & content of theMessage)
				set theAttachments to ""
				set theAttachmentsCount to count of ¬
					mail attachment of theMessage
				if theAttachmentsCount is greater than 0 then
					set theMailAttachments to ¬
						mail attachments of theMessage
					repeat with theMailAttachment in theMailAttachments
						set theAttachments to theAttachments & ¬
							name of theMailAttachment & crt
					end repeat
					set theNote to ¬
						theNote & crt & crt & "Attachments:" & ¬
						crt & theAttachments
				end if
				set theTaskID to my makeOmniFocusTask(theTitle, theNote)
				-- set background color of theMessage to none
				set flag index of theMessage to 5
				set read status of theMessage to true
				-- my archiveMessage(theMessage) -- disabled, too buggy.
				set theID to id of theMessage
				if theID is greater than pLastID then
					set pLastID to theID
				end if
			end repeat
		end if
	end tell
	
end run

on findOmnifocusTask(theMessage)
	using terms from application "Mail"
		set theMessageID to (message id of theMessage) as string
	end using terms from
	tell application "OmniFocus"
		tell default document
			try
				set theTask to first flattened task whose completed is false ¬
					and note contains theMessageID
			on error
				set theTask to missing value
			end try
		end tell
	end tell
	return theTask
end findOmnifocusTask

on makeOmniFocusTask(theTitle, theNote)
	tell application "OmniFocus"
		tell default document
			set theTask to make new inbox task with properties ¬
				{name:theTitle, note:theNote}
		end tell
	end tell
	set theTaskID to "omnifocus://%3c" & id of theTask & "%3e"
	return theTaskID
end makeOmniFocusTask

on archiveMessage(theMessage)
	tell application "Mail"
		set theAccount to account of mailbox of theMessage
		set theMailboxArchive to item 1 of ((mailboxes of theAccount) ¬
			whose name is pArchiveBoxName)
		-- The following code did work too to move the message: 
		-- set mailbox of theMessage to theMailboxArchive
		move theMessage to theMailboxArchive
	end tell
end archiveMessage

```

## Comment s'en servir ?

* Lancer l'éditeur de Scripts (Script Editor en anglais, AppleScript Editor dans les anciennes versions de macOS)
* Créer un nouveau script, copier-coller le contenu du script ci-dessus, et sauvegarder le script à l'endroit suivant dans votre répertoire utilisateur : `/Bibliothèque/Application Scripts/com.apple.mail"` (attention, je ne suis pas certain du nom du répertoire Application Scripts en français, si quelqu'un le connaît vous pouvez me l'indiquer sur Twitter ou par email). J'ai appelé le fichier de script `rule → omnifocus-sendto`
* Créer une règle dans Apple Mail qui va lancer le script automatiquement.

![Règle Apple Mail vers OmniFocus](/pictures/2017/07/rule-mail-omnifocus.jpg)

## Que va faire le script ?

Le script va créer une tâche dans OmniFocus pour **tous** les emails qui sont dans votre boîte de réception, et va leur ajouter un drapeau de couleur violette (la couleur d'OmniFocus) pour indiquer qu'une tâche correspondante a été créée.

À chaque fois que le script est exécuté (donc à chaque fois que vous recevez au moins un nouvel email), le script vérifie si la tâche correspondante dans OmniFocus existe encore ET n'est pas complétée. Si ce n'est pas le cas (la tâche a été complétée ou supprimée) alors le script enlève le drapeau violet de l'email et le déplace vers le dossier Archive.

## Notes techniques

Les connaisseurs verront que je n'utilise pas la formulation recommandée 	`on perform mail action with messages...` pour déclencher le traitement. C'est simplement parce que elle est trop buggée, et ce depuis des années. Au lieu de cela j'utilise une technique pour identifier les nouveaux emails qui est de garder en mémoire l'ID du dernier email qui a été traité (`pLastID`).

Il y a une procédure nommée archiveMessage. Ne changez pas le script pour archiver le message dès sa réception ; il y a un bug dans Mail qui fait que certains messages risquent d'être perdus si vous le faites (je crois que c'est lié au fait que Mail archive le message alors qu'il n'a pas fini d'être chargé depuis le serveur, mais je ne suis pas certain).
