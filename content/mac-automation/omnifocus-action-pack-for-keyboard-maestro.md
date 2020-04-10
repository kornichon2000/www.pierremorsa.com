+++
draft = false
title = "OmniFocus Action Pack for Keyboard Maestro"
date = "2019-12-23"
+++

The OmniFocus Action Pack for Keyboard Maestro is a set of plugin actions to control OmniFocus from Keyboard Maestro. OmniFocus is a top-class task management App from Omni Group. Keyboard Maestro is a wonderful automation app from Peter Lewis. Together, they are a fantastic productivity combo.

I originally created these actions for my own use, but I decided to make them available for free here as they might be of interest to others.

## Installation
You need to install two components:

* [The OmniFocusLibrary AppleScript library. Click here to download it.](/files/OmniFocusLibrary.zip)
* [The OmniFocus Action Pack for Keyboard Maestro. Click here to download it.](/files/OmniFocusActionPackForKeyboardMaestro.zip)

You will get two .zip archives. Uncompress them and move them in the locations as instructed below.

### Install OmniFocusLibrary
Download and uncompress the OmniFocusLibrary.scpt file. Copy it to ~/Library/Script Libraries/

### Install Omnifocus Action Pack for Keyboard Maestro
Download and uncompress the Keyboard Maestro Actions. Copy them to ~/Library/Application Support/Keyboard Maestro/Keyboard Maestro Actions/ — alternatively, drag and drop the .zip archive on the Keyboard Maestro Icon in the Dock.
Quit and relaunch Keyboard Maestro.

## List of available actions
The pack includes more than 20 actions to automate OmniFocus. Most actions manipulate tasks, but it also offers a templating system. Here is the list of actions, with a basic description of what they do:

* OmniFocus Convert Task To Project: turns a task into a project.
* OmniFocus Defer To Hour: sets the defer hour of the task. Useful to quickly defer a task to the next morning or afternoon.
* OmniFocus Do Actions: executes a list of actions configured in the note of the task. You can, for example, open an application or document, start an iTunes playlist, execute a shell script or an applescript. 
* OmniFocus Due On Hour: sets the due hour of the task. Useful to quickly set the due hour to next morning or afternoon.
* OmniFocus Get IDs of Selected Tasks: get the list of IDs of currently selected tasks.
* OmniFocus Get Task Estimated Duration: get the estimated duration of the task.
* OmniFocus Get Task File Path: get a file path from the note of the task, if it exists.
* OmniFocus Get Task Mail MessageID: get a Mail Message ID from the note of the task, if it exists.
* OmniFocus Get Task Name: get the name of the task.
* OmniFocus Get Task Note: get the note of the task.
* OmniFocus Get Task Note Field: get a field from the note of the task.
* OmniFocus Get Task Primary Tag: get the primary tag (main tag) of the task.
* OmniFocus Get Task Project: get the project of the task.
* OmniFocus Get Task Project Code: get the project code of the task.
* OmniFocus Get Task Tag List: get all tags from the task.
* OmniFocus Insert Template: insert a list of template actions in a project.
* OmniFocus Make Task: make a new task.
* OmniFocus Open Project Folder: open the project folder of the task.
* OmniFocus Set Perspective: set the current perspective in OmniFocus.
* OmniFocus Set Sidebar Selection: (de)selects the items, tags or projects, in the sidebar tree.
* OmniFocus Set Task Name: set the name of the task.
* OmniFocus Set Task Primary Tag: set the primary tag of the task.
* OmniFocus Set Task Project: set the project of the task.
* OmniFocus Set Task Status: set the status of the task.
* OmniFocus Set Task Tag List: set the list of tags of the task.

## How to use the Action Pack? Real life examples

### Create a palette to set the primary tag

### Change the perspective based on time of day

### Set up your work environment when starting a task

### Use a template for the creation of a document 

### Get a list of links to currently selected task in MarkDown format


## Actions Reference

### OmniFocus Defer to Hour
OmniFocus Defer to Hour sets the selected task's Defer Hour. Useful to quickly defer a task to the next morning or afternoon. 

* If there is no defer date, sets it to the next future occurence of the specified hour. 
* If the defer date was in the past, sets it to the next future occurence of the specified hour. 
* If the defer date is already in the future, only change the hour.

### OmniFocus Do Actions
Note: this is not very well documented yet. I plan to complete the documentation when I have the time.

OmniFocus Do Actions executes the list of actions in the note of the task. Possible actions are:

* shellscript: executes a shell script command.
* applescript: executes an AppleScript file.
* kmmacro: executes a Keyboard Maestro macro.
* open: opens a file.
* activate: activates an application.
* run: runs an application (without bringing it to the front).
* quit: quits an application.
* pause: pauses the execution of actions for x seconds.
* playlist: plays a playlist in iTunes.

There are two possible action groups:

* "on start:" (written exactly on start: including the space after on and the : after start): a list of actions to execute when you start the action.
* "on complete:": a list of actions to execute when you complete the action.

Actions listed outside of these groups will not be executed.

Example 1

```
This is some text in the notes. It's not in an action group and will not execute anything.

on start:
"IA Writer" activate
"Tweetbot" quit

on complete:
"IA Writer" quit
```

The text above on start: and on complete: will not do anything. The actions after on start: will activate the application IA Writer and quit Tweetbot. The actions after on complete: will quit IA Writer.

Tip: setting up on start: and on complete: actions for one time tasks is tedious and probably not worth it. It's really useful for repeating actions or template actions. See OmniFocus Insert Template to learn more about the templating system that comes with the Action Pack.

### OmniFocus Due on Hour
OmniFocus Defer to Hour sets the selected task's due Hour. 

* If there is no due date, sets it to the next future occurence of the specified hour.
* If the due date was in the past, sets it to the next future occurence of the specified hour. 
* If the due date is already in the future, only change the hour.

### OmniFocus Get IDs of selected tasks
OmniFocus Get IDs of Selected Tasks gets the list of IDs of currently selected tasks, as a text list. Each ID can then be individually processed with a "For Each" loop in Keyboard Maestro.

Tip 1 : for most actions, you don't need to first get the list of selected tasks. OmniFocus Get... actions, such as OmniFocus Get Task Name, automatically get the first selected task if no ID is specified. OmniFocus Set actions, such as OmniFocus Set Task Name, will act on the specified task: first selected, last selected, all selected tasks, task with ID specified.

Tip 2 : you can use the list of IDs to build links to the task, with the format omnifocus:///task/ID. Here is an example to create a full set of links in MarkDown format.


### OmniFocus Get Task...
OmniFocus Get Task... actions get the properties of a task, either the first selected task or the task with a specific ID.

These actions are very simple and should not require a lot of explanations:

* OmniFocus Get Task Estimated Duration: get the estimated duration of the task.
* OmniFocus Get Task Name: get the name of the task.
* OmniFocus Get Task Note: get the note of the task.
* OmniFocus Get Task Primary Tag: get the primary tag (main tag) of the task.
* OmniFocus Get Task Project: get the project of the task.
* OmniFocus Get Task Tag List: get all tags from the task, each tag separated by a new line.

The following Get actions are not standard.

* OmniFocus Get Task File Path: get a file path from the note of the task, if it exists.

* OmniFocus Get Task Mail MessageID: get a Mail Message ID from the note of the task, if it exists.
* OmniFocus Get Task Note Field: get a field from the note of the task.
* OmniFocus Get Task Project Code: get the project code of the task.

### OmniFocus Insert Template
Templates should really be a standard functionality of OmniFocus. Because there is no such functionality, I created my own version: OmniFocus Insert Template.

#### Setup
The OmniFocus Insert Template action requires a bit of setup:

1. In the projects tree, create a folder named "templates" (all lowercase). This folder will contain your templates. It can have the Active or Dropped status, it doesn't matter.
2. In that folder, create projects that will be used as task templates.

For example, you create the folder template, then inside you create projects that are the actual templates.

```
templates (folder)
	Document (project)
		Subtask 1
		Subtask 2
	Invoice (project)
		Subtask A
		Subtask B
		Subtask C
```

#### Use
To insert a template, select the parent task or project, then use the Insert Template action. A list of available templates (which is the list of projects in the templates folder) will be displayed in a dialog. If we take the example we used in the setup, you will have the choice between two templates: Document and Invoice. Select the template you want to insert. If for example you select your project "My Project" with two existing tasks and add the template "Invoice" to it, the result will be:

```
My Project (project)
	Existing task 1
	Existing task 2
	Invoice
		Subtask A
		Subtask B
		Subtask C
```

If instead of selecting "My Project" you select "Existing task 1", the template will be inserted as a subtask of Existing task 1.

```
My Project (project)
	Existing task 1
		Invoice
			Subtask A
			Subtask B
			Subtask C
	Existing task 2
```

#### Tokens
You can use special tokens in the name of the template tasks: 

* %project% will be replaced by the name of the project the template is inserted in.
* %parent% will be replaced by the name of the parent task the template is inserted in.
* %lower% will force the name of the task to be all lowercase.
* %upper% will force the name of the task to be all uppercase.
* %version% automatically inserts an incremental version number.
* %prompt:Prompt text% will display a dialog with "Prompt text" and replace the %prompt:xxx% token with the entered value.  
* >> everything before the >> sign will not be inserted.
* << everything after the << sign will not be inserted.

Let's modify our templates as an example.

```
templates (folder)
	Document %parent% version %version% %upper%
		Subtask 1>>Create new document
		Subtask 2>>Email new document
	Invoice for %project%
		Subtask A
		Subtask B
		Subtask C
```

First we insert the "Document" template to the "Event Brochure" subtask of the project "My Project". When This happens, we are prompted to "Enter document name". We enter "Event Brochure". The result is:

```
My Project
	Marketing brochure
		DOCUMENT MARKETING BROCHURE VERSION 1
			Create new document
			Email new document
```

* The name of the parent task was inserted because we used %parent%.
* A version number was added automatically.
* The whole task name was turned into uppercase because we used %upper%.
* The text parts "Subtask 1" and "Subtask 2" were ignored because they were located before the >> sign.

If we add the task template a second time, we will get:

```
My Project
	Marketing brochure
		DOCUMENT MARKETING BROCHURE VERSION 1
			Create new document
			Email new document
		DOCUMENT MARKETING BROCHURE VERSION 2
			Create new document
			Email new document
```


### OmniFocus Make Task
OmniFocus Make Task creates a new OmniFocus task. You can specify its name, note, primary tag and project.

### Tags (formerly known as contexts):

* OmniFocus Get Task Primary Tag: get the name of the primary tag of the specified task.
* OmniFocus Set Task Primary Tag: set the name of the primary tag of the specified task.
* OmniFocus Get Task Tags: get the list of tags names or tag IDs of the specified task.
* OmniFocus Set Task Tags: set the list of tags of the specified task, by tag names or tag IDs. You can add, remove, replace or toggle the tags of the task.

Because of an AppleScript limitation, tags with non ascii characters, for example Chinese characters or emojis, cannot be passed by name in Set Task Primary Tag and Set Task Tags. In that case, the best solution is to use the tag ID instead of the tag name to manipulate the tags.

### Projects

* OmniFocus Get Task Project Code: returns the first word of the project name, assuming it is the project code. Using a unique identifier (a project code) as the first word of a project name allows to use it in other places, such as a folder name in the Finder. For example, for a project called "P00001 Project 1", P00001 will be returned as the project code. You can then use that code in conjunction with the "OmniFocus Open Project Folder" action to open a folder named "P00001" in the Finder.
* OmniFocus Get Task Project Name: returns the name of the project of the specified task.
* OmniFocus Set Task Project: sets the project of the selected task.


### Links

* OmniFocus Get Task File Path: if a file:// url exists in the note field of the first selected task, returns its POSIX path (may fail if special characters other than space %20 are present in the file path).
* OmniFocus Get Task Mail Message ID: if a message:// url exists in the note field of the first selected task, returns its ID. Only works for links to Apple Mail messages.

### Sidebar

* OmniFocus Deselect All Sidebar Elements: deselect all sidebar tree elements, either for the tags or projects tree, as long as the tree is visible.
* OmniFocus Select Sidebar Element: select the sidebar element passed as argument. It can be a context or project, but it has to be valid for the current sidebar view.

### Perspectives

* OmniFocus Set Perspective: sets the perspective of the front window.


### Open a linked project folder

* OmniFocus Open Project Folder: if you have a folder containing your projects, this action will open the folder whose name starts with the project code (see OmniFocus Get Task Project Code). If the project code is P00001, the folder can be named "P00001", "P00001 Project 1" or "P00001 My Super Project", but not "P00002". Only the first word matters. 

## Additionnal technical notes
Most actions use the OmniFocusLibrary AppleScript library. You can create new actions that use the library, and you can call the library's procedures directly from Keyboard Maestro using the "Execute AppleScript" action.
