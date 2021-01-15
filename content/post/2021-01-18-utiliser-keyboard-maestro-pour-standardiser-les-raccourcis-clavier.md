+++
draft       = false
date        = "2021-01-18"
title       = "Utiliser Keyboard Maestro pour standardiser les raccourcis clavier"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

Ça serait pas cool si les menus et les raccourcis clavier étaient identiques dans toutes les applications ? Si c’est le cas pour quelques commandes, comme ⌘C pour copier et ⌘V pour coller, c’est rapidement le bazar pour d’autres. Ainsi, entre les différentes applications que j’utilise, j’ai pas moins de huit variations de menus et de raccourcis clavier pour la commande aligner à gauche : Arrange → Align Left, Arrange → Align → Left, Arrange → Align Objects → Left, Arrange → Align or Distribute → Align Left, Layer → Alignment → Align Left, Object → Alignment → Align Left Edges, etc. 

Il n’y a rien de plus frustrant que de devoir mémoriser un raccourci différent dans chaque application. C’est pourquoi j’utilise Keyboard Maestro pour standardiser les raccourcis clavier que j’utilise le plus fréquemment.

Par exemple j’ai standardisé les commandes d’alignement des objets de la manière suivante :

* ⌘F1 → aligner à gauche
* ⌘F2 → aligner au centre
* ⌘F3 → aligner à droite
* ⌘F4 → aligner les sommets
* ⌘F5 → aligner les milieux
* ⌘F6 → aligner les bases

Désormais, quelle que soit l’application que j’utilise, PowerPoint, Affinity Designer, Curio… je peux utiliser le même raccourci clavier.

Il existe de nombreuses manières d’arriver à ce résultat, mais ci-dessous vous trouverez un exemple de comment je procède :

* Je déclenche la commande lorsque je presse ⌘F1.
* Je teste simplement les différents menus jusqu’à trouver le menu existant dans l’application, et j’exécute alors la bonne commande.

![Raccourci clavier standard dans Keyboard Maestro](/pictures/2021/01/standard-keyboard-shortcut-keyboard-maestro-macos.jpg)