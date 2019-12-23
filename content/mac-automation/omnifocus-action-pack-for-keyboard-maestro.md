+++
draft = false
title = "OmniFocus Action Pack for Keyboard Maestro"
date = "2019-12-23"
+++

The OmniFocus Action Pack for Keyboard Maestro is a set of plugin actions that gives an easy way to control OmniFocus from Keyboard Maestro. OmniFocus is a top-class task management App from Omni Group. Keyboard Maestro is a wonderful automation app from Peter Lewis. Together, they are a fantastic productivity combo.

I originally created these actions for my own use, but I decided to make them available for free here as they might be of interest to others.

## Installation
You need to install two components:

* The OmniFocusLibrary AppleScript library
* The additional Keyboard Maestro Actions 

### Install OmniFocusLibrary
Download and uncompress the OmniFocusLibrary.scpt file. Copy it to ~/Library/Script Libraries/

### Install Keyboard Maestro Actions
Download and uncompress the Keyboard Maestro Actions. Copy them to ~/Library/Application Support/Keyboard Maestro/Keyboard Maestro Actions/ — alternatively, drag and drop the .zip archive on the Keyboard Maestro Icon in the Dock.
Quit and relaunch Keyboard Maestro.

## Available actions
Here is the list of actions, with minimal documentation.

### Get list of selected tasks

* OmniFocus Get IDs of Selected Tasks: get the list of IDs of currently selected tasks, as a text list. Each ID can then be individually processed with a "For Each" loop in Keyboard Maestro.

For most actions, you don't need to first get the list of selected tasks. Get actions, such as get task name, will act on the first selected task if no ID is specified. Set actions, such as set task name, will act on the specified task: first selected, last selected, all selected tasks, task with ID specified.

### Create a new task

* OmniFocus Make Task: make a new OmniFocus task. You can specify its name, note, context name and project name.

### Basic task properties

* OmniFocus Get Task Name: get the name of the specified task.
* OmniFocus Get Task Note: get the note of the specified task.
* OmniFocus Set Task Name: set the name of the specified tasks.

For some strange reason (laziness, really) I didn't create an OmniFocus Set Task Note action. If you need it, ping me.

### Tags (formerly known as contexts):

* OmniFocus Get Task Primary Tag: get the name of the primary tag of the specified task.
* OmniFocus Set Task Primary Tag: set the name of the primary tag of the specified task.
* OmniFocus Get Task Tags: get the list of tags names or tag IDs of the specified task.
* OmniFocus Set Task Tags: set the list of tags of the specified task, by tag names or tag IDs. You can add, remove, replace or toggle the tags of the task.

### Projects

* OmniFocus Get Task Project Code: returns the first word of the project name, assuming it is the project code. Using a unique identifier (a project code) as the first word of a project name allows to use it in other places, such as a folder name in the Finder. For example, for a project called "P00001 Project 1", P00001 will be returned as the project code. You can then use that code in conjunction with the "OmniFocus Open Project Folder" action to open a folder named "P00001" in the Finder.
* OmniFocus Get Task Project Name: returns the name of the project of the specified task.
* OmniFocus Set Task Project: sets the project of the selected task.

### Dates

* OmniFocus Defer to Hour: sets the selected task's Defer Hour. If there is no defer date, sets it to the next future occurence of the specified hour. If the defer date was in the past, sets it to the next future occurence of the specified hour. If the defer date is in the future, only change the hour.
* OmniFocus Due on Hour: same behaviour as Defer to Hour, but for the due hour.

### Links

* OmniFocus Get Task File Path: if a file:// url exists in the note field of the first selected task, returns its POSIX path (may fail if special characters other than space %20 are present in the file path).
* OmniFocus Get Task Mail Message ID: if a message:// url exists in the note field of the first selected task, returns its ID. Only works for links to Apple Mail messages.

### Sidebar

* OmniFocus Deselect All Sidebar Elements: deselect all sidebar tree elements, either for the tags or projects tree, as long as the tree is visible.
* OmniFocus Select Sidebar Element: select the sidebar element passed as argument. It can be a context or project, but it has to be valid for the current sidebar view.

### Perspective

* OmniFocus Set Perspective: sets the perspective of the front window.

### Templates

* OmniFocus Insert Template: a powerful task template system. See documentation to set it up and use it.

The action pack offers the powerful "OmniFocus Insert Template" action, but it requires a bit of setup.

1. In the projects tree, create a folder named "templates" (all lowercase). This folder will contain all templates. It can have the Active or Dropped status, it doesn't matter.
2. In that folder, create projects that will be used as task templates.

You can use special tokens in the name of the template tasks: 

* %project% will be replaced by the name of the project the template is inserted in.
* %parent% will be replaced by the name of the parent task the template is inserted in.
* %lower% will force the name of the task to be all lowercase.
* %upper% will force the name of the task to be all uppercase.

To insert a template, select the parent task or project, then use the Insert Template action. A list of available templates (which is the list of projects in the templates folder) will be displayed in a dialog. Select the template you want to insert. It will be added as a child task to the currently selected task or project.

### Open a linked project folder

* OmniFocus Open Project Folder: if you have a folder containing your projects, this action will open the folder whose name starts with the project code (see OmniFocus Get Task Project Code). If the project code is P00001, the folder can be named "P00001", "P00001 Project 1" or "P00001 My Super Project", but not "P00002". Only the first word matters. 

## Additionnal technical notes
Most actions use the OmniFocusLibrary AppleScript library. You can create new actions that use the library, and you can call the library's procedures directly from Keyboard Maestro using the "Execute AppleScript" action.
