+++
draft = true
title = "Keyboard Maestro Actions | Pierre Morsa"
date = "2019-07-18"
+++
Keyboard Maestro is the App that I use to automate a lot of things on my Mac, in conjunction with AppleScript, Hazel and Retrobatch. 

On this page you will find actions for the following Apps:

* General AppleScript actions
* OmniFocus actions: actions to get and set the primary tag (formerly known as context), project, and other properties of selected tasks. I use it to have a palette of actions next to the main OmniFocus window. The actions are compatible with OmniFocus 3.
* Mail actions

You can freely modify, reuse and distribute it.

Hi all,

## Available actions for OmniFocus

Here is the list of actions available in the Keyboard Maestro Actions Pack for OmniFocus:

* OmniFocus Defer to Hour: sets the selected task's Defer Hour. If there is no defer date, sets it to the next future occurence of the specified hour. If the defer date was in the past, sets it to the next future occurence of the specified hour. If the defer date is in the future, only change the hour.
* OmniFocus Deselect All Sidebar Elements: deselect all sidebar tree elements, either for the tags or projects tree, as long as the tree is visible.
* OmniFocus Due on Hour: same behaviour as Defer to Hour, but for the due hour.
* OmniFocus Get IDs of Selected Tasks: get the list of IDs of currently selected tasks, as a text list. Each ID can then be individually processed with a "For Each" loop in Keyboard Maestro.
* OmniFocus Get Task File Path: if a file:// url exists in the note field of the first selected task, returns its POSIX path (may fail if special characters other than space %20 are present in the file path).
* OmniFocus Get Task Mail Message ID: if a message:// url exists in the note field of the first selected task, returns its ID. Only works for links to Apple Mail messages.
* OmniFocus Get Task Name: returns the name of the first selected task.
* OmniFocus Get Task Note: returns the note of the first selected task.
* OmniFocus Get Task Primary Tag Name: returns the primary tag name of the first selected task.
* OmniFocus Get Task Project Code: returns the first word of the project name, assuming it is the project code. Using a unique identifier (a project code) as the first word of a project name allows to use it in other places, such as a folder name in the Finder. For example, for a project called "P00001 Project 1", P00001 will be returned as the project code. You can then use that code in conjunction with the "OmniFocus Open Project Folder" action to open a folder named "P00001" in the Finder.
* OmniFocus Get Task Project Name: returns the name of the project of the first selected task.
* OmniFocus Insert Template: a powerful task template system. See documentation to set it up and use it.
* OmniFocus Make Task: make a new OmniFocus task. You can specify its name, note, context and project.
* OmniFocus Open Project Folder: if you have a folder containing your projects, this action will open the folder whose name starts with the project code (see OmniFocus Get Task Project Code). If the project code is P00001, the folder can be named "P00001", "P00001 Project 1" or "P00001 My Super Project", but not "P00002". Only the first word matters. 
* OmniFocus Select Sidebar Element: select the sidebar element passed as argument. It can be a context or project, but it has to be valid for the current view.
* OmniFocus Set Perspective: sets the perspective of the front window.
* OmniFocus Set Primary Tag: sets the primary tag of the selected task.
* OmniFocus Set Project: sets the project of the selected task.

## Using the templating system

The action pack offers the extremely powerful "OmniFocus Insert Template" action, but it requires a bit of setup.

1. In the projects tree, create a folder named "templates" (with a lower t). This folder will contain all templates. It can have the Active or Dropped status, it doesn't matter.
2. 
