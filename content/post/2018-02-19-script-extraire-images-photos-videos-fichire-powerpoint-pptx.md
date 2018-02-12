+++
title       = "Un script pour extraire les images, photos et vidéos d'un fichier PowerPoint"
author      = "Pierre Morsa"
date        = "2018-02-19"
publishdate = "2018-02-19T05:00:00+01:00" 
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++

Vous vous souvenez peut-être du truc que je donnais dans un ancien billet pour extraire les images, les photos et les vidéos d’un fichier PowerPoint ? Et bien si vous possédez un Mac vous avez de la chance : j’ai écrit un script AppleScript pour automatiser la tâche. Si vous êtes sur Windows, vous pouvez toujours utiliser la technique manuelle.

Si vous vous intéressez à AppleScript, j’ai beaucoup commenté le code pour vous aider à comprendre comment le script fonctionne. J’aurais pu le fournir sous forme de miniapplication, mais comme je ne suis pas enregistré comme développeur chez Apple je pense que GeteKeeper va en bloquer l’exécution. Et puis je vous déconseille d’exécuter des applications trouvées sur n’importe quel blog, par exemple le mien.

Même vous n’avez pas d’expérience avec AppleScript, ce n’est pas compliqué :

* [Téléchargez le script en cliquant ici.](/files/extract-media-from-powerpoint.scpt)
* Ouvrez le script dans l’éditeur de script en double-cliquant dessus.
* Appuyez sur le bouton « Run » (désolé je ne connais pas son nom en français).
* Une boîte de dialogue apparaît et vous demande de sélectionner la présentation dont vous voulez extraire le contenu media.
* Une fois la présentation sélectionnée, les fichiers sont extraits et un dossier nommé « ppt » doit apparaître au même endroit que la présentation originale. À l’intérieur se trouve un dossier media qui contient toutes les images, photos et vidéos de la présentation PowerPoint. C’est magique !

Vous pouvez très bien transformer le script en application vous-même. Pour cela, il suffit de le sauvegarder de la manière suivante :

* Sélectionnez le menu Fichier → Exporter...
* Dans le format de fichier, sélectionnez Application
* Cliquez sur Sauvegarder et voilà, le script est devenu une application à part entière !

![Extract Media From Powerpoint Export](/pictures/2018/02/extract-media-from-powerpoint-exportas.jpg)

Désormais il suffit de glisser-déposer la présentation PowerPoint sur l’icône de l’application pour lancer l’extraction, ou de double-cliquer sur l’application pour la lancer comme pour n’importe quelle autre.
