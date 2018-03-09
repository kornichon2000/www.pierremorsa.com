+++
title       = "Résoudre le problème « Failed to Render » dans Apple Motion"
author      = "Pierre Morsa"
date        = "2018-03-19"
publishdate = "2018-03-19T05:00:00+01:00" 
categories  = [ "Technomagie" ]
draft       = false
+++
J'utilise de temps en temps Apple Motion, lorsque je dois réaliser des animations qui dépassent les capacités de PowerPoint. Un de mes plugins préférés est Yanobox Nodes 2. 

La semaine dernière j'ai été confronté à un message d'erreur lorsque j'ai essayé d'insérer le plugin dans Motion : « Plugin <Nodes 2>: Failed To Render ». 

![Plugin Nodes 2 Failed To Render](/pictures/2018/03/plugin-nodes-2-failed-to-render.jpg)

Après vérification tous mes plugins externes étaient affectés par ce problème. J'ai contacté le support, et ceux-ci m'ont donné la solution : il s'agit d'un bug introduit par High Sierra sur certains MacBook Pro. Lorsqu'on utilise l'ordinateur avec un écran externe et que l'écran du MacBook Pro est fermé, certaines ressources nécessaires ne sont pas mises à disposition par macOS.

La solution en attendant qu'Apple corrige le problème ? Ne pas utiliser le MacBook Pro en mode « clamshell » : ouvrir l'écran du MacBook Pro, quitter et redémarrer Apple Motion. Le problème devrait être résolu.
