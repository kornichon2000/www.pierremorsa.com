+++
title       = "Résoudre le problème « Failed to Render » dans Apple Motion et Final Cut Pro X"
author      = "Pierre Morsa"
date        = "2018-03-19"
publishdate = "2018-03-19T05:00:00+01:00" 
categories  = [ "Technomagie" ]
draft       = false
+++
Mise à jour du 2018-03-31 : à priori macOS High Sierra 10.13.4 (c'est le .4 qui est important) règle le problème. Pour vérifier quelle est votre version de macOS, il faut aller dans le menu Pomme → À propos de ce Mac...

J’utilise de temps en temps Apple Motion, lorsque je dois réaliser des animations qui dépassent les capacités de PowerPoint. Un de mes plug-ins préférés est Yanobox Nodes 2. Mais la semaine dernière j’ai été confronté à un message d’erreur que je n’avais jamais eu lorsque j’ai essayé d’insérer le plug-in dans Motion : « Plugin<Nodes 2>: Failed To Render ». 

![Plugin Nodes 2 Failed To Render](/pictures/2018/03/plugin-nodes-2-failed-to-render.jpg)

La couleur de l’écran d’erreur étant particulièrement moche, pire encore que le bleu Windows, il fallait que je trouve une solution.

Après vérification tous mes plug-ins externes étaient affectés par ce problème, que ce soit dans Apple Motion ou Final Cut Pro X. J’ai contacté le support de Yanobox et FX Factory, et ceux-ci m’ont donné la solution : il s’agit d’un bug introduit par High Sierra sur certains MacBook Pro. Lorsqu’on utilise l’ordinateur avec un écran externe et que l’écran du MacBook Pro est fermé (le mode « palourde » lorsque l’ordi est fermé comme un coquillage), certaines ressources nécessaires ne sont pas mises à disposition par macOS.

La solution en attendant qu’Apple corrige le problème ? Ne pas utiliser le MacBook Pro en mode « clamshell » : ouvrir l’écran du MacBook Pro, quitter et redémarrer Apple Motion ou Final Cut Pro X. Le problème devrait être résolu.
