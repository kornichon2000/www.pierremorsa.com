+++
draft       = false
date        = "2022-03-21"
title       = "Créer un menu pour contrôler Music avec Keyboard Maestro"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

[Keyboard Maestro](https://www.keyboardmaestro.com/main/) est mon application préférée. Elle permet de créer des « macros ». Une macro est un ensemble d’actions qui sont lancées par un événement déclencheur. Une macro simple est par exemple de lancer l’application Music lorsqu’on appuie sur le raccourci clavier commande-M. Un exemple plus compliqué est par exemple de récupérer des données sur le web tous les lundis puis de les intégrer automatiquement à une base de données. Les possibilités de Keyboard Maestro sont virtuellement infinies, et ce malgré le quasi-sabotage de l’automatisation par Apple ces dernières années (oui je sais, il y a Raccourcis, mais ses possibilités sont ridicules par rapport à ce qui était possible de faire avec AppleScript).

La version 10 permet de créer des « menulets » dans la barre de menus, ces icônes qui sont dans la partie droite de la barre. Si vous avez un petit écran, cela risque de faire encombré, mais sur un grand écran on peut mettre beaucoup de choses. Comme exemple, j’ai créé un « menulet » qui affiche le nom du morceau en cours de lecture dans l’application Music, avec la possibilité de mettre la lecture en pause et de passer au morceau précédent et suivant.

![Music Menulet Keyboard Maestro](/pictures/2022/03/music-menulet.png)

Si cela vous intéresse, j’explique ci-dessous comment faire (désolé, mon système est en anglais, j’ignore le nom des commandes exact en français).

## Créer un groupe qui servira de menu

Allez dans le menu File → Create New Macro Group.

Nommez le nouveau groupe « Music Menu » (ou Toto ou ce que vous voulez, ça n’a pas d’importance, c’est juste pour vous souvenir de ce que le groupe fait).

Une fois le groupe créé, vous pouvez le configurer comme suit :

![Music Group Keyboard Maestro](/pictures/2022/03/keyboard-maestrodmusic-group.png) 

* Mettre « When these applications are running » avec « Music » comme application (logique).
* Mettre « Display in menu bar ». C’est ce qui transforme le groupe en menulet.
* Mettez bien le nom du named clipboard qui contiendra l’icône. Vous pouvez créer un named clipboard dédié dans les préférences de Keyboard Maestro. Je vous conseille le même nom ridicule que moi, « zeMusicMenuIcon », car cela va vous faire gagner du temps. 
* Mettez aussi le nom de la variable qui contiendra le nom du morceau. Pareil, utilisez le même nom que celui que j’ai utilisé, « zeMusicTrack ». Vous pouvez bien sûr utiliser des noms différents, mais vous devrez modifier les macros à l’étape suivante.

## Vous avez la flemme

Si j’étais vous, j’aurais la flemme de tout recopier. Alors je me demanderais s’il est possible de télécharger directement le bazar. [Oui, c’est possible en cliquant ici.](/pictures/2022/03/music-menu-macros.zip) Téléchargez l’archive, décompressez-là, double-cliquez dessus pour l’installer dans Keyboard Maestro et vous aurez directement toutes les macros dont je parle ici disponibles dans la bibliothèque de macros.

![Macro Library Keyboard Maestro](/pictures/2022/03/macro-library.png)

Les macros sont disponibles dans Window → Macro Library. Puis, sélectionnez Interface Control et faites glisser l’élément « Music Menu Macros » dans le groupe que vous venez de créer. Paf, les 5 macros sont automatiquement ajoutées au groupe et vous pouvez lire la suite juste pour votre culture générale.

## Créez la macro qui met à jour le nom du morceau

Je ne vais pas tout expliquer ici, ce serait trop long, mais en gros il y a un AppleScript qui récupère le nom de l’artiste et du morceau. Ensuite on utilise cela pour rafraîchir la variable utilisée pour le nom du menu.

![Macro Update Music Track Name](/pictures/2022/03/macro-update-track-name.png)

## Créez les autres macros

Il ne reste plus qu’à créer les macros pour démarrer la lecture ou mettre sur pause, et pour passer au morceau précédent ou au morceau suivant. Ces macros sont plutôt simples, donc je vous laisse regarder comment elles fonctionnent directement dans Keyboard Maestro. Il y a une dernière macro qui existe pour activer l’application Music au premier plan.

## Conclusion

Ce n’est qu’un exemple pour montrer ce qu’il est possible de faire avec Keyboard Maestro. Cependant, chaque fois que j'écris un article dessus, je me rends compte que ce programme nécessite de connaître les concepts de base de la programmation pour en tirer le meilleur parti. Ce n’est pas le programme le plus simple du monde, mais bien utilisé il peut fortement augmenter votre productivité.
