+++
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

Today I'm sharing my OmniFocus Actions Pack that I use daily. It offers the following actions:

* OmniFocus Defer to Hour: sets the selected task's Defer Hour. If the defer date was in the past, set it to the next future occurence of the specified hour. If the defer date is in the future, only change the hour. 
* OmniFocus Deselect All Sidebar Elements: deselect all sidebar tree elements (if a tree is available).
* OmniFocus Due on Hour: same behaviour as Defer to Hour, but for the due hour.
* OmniFocus Get List of Selected Tasks: get the list of IDs of currently selected tasks.
* OmniFocus Get Task File Path: if a file:// url exists in the note field of the first selected task, returns its POSIX path (may fail if special characters other than space %20 are present in the file path).
* OmniFocus Get Task Mail Message ID: if a message:// url exists in the note field of the first selected task, returns its ID. Only works for links to Apple Mail messages.
* OmniFocus Get Task Name: returns the name of the first selected task.
* OmniFocus Get Task Note: returns the note of the first selected task.
* OmniFocus Get Task Primary Tag Name: returns the primary tag name of the first selected task.
* OmniFocus Get Task Project Code: returns the first word of the project name, assuming it is a project code.
* OmniFocus Get Task Project Name: returns the name of the project of the first selected task.
* OmniFocus Make Task: make a new OmniFocus task. You can specify its name, note, context and project.
* OmniFocus Select Sidebar Element: select the sidebar element passed as argument. It can be a context or project, but it has to be valid for the current view.
* OmniFocus Set Context: deprecated, it's better to use set Primary Tag instead.
* OmniFocus Set Perspective: sets the perspective of the front window.
* OmniFocus Set Primary Tag: sets the primary tag of the selected task.
* OmniFocus Set Project: sets the project of the selected task.

