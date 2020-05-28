+++
date        = "2020-06-01"
title       = "Créer automatiquement des dossiers par jour"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie", "Mac" ]
draft       = false
+++
Pendant le confinement, comme beaucoup de parents, nous avons reçu les devoirs pour nos enfants chaque jour. La routine était toujours la même : se connecter sur École Directe, télécharger la liste des devoirs et les pièces jointes, parfois nombreuses, faire les devoirs, les scanner puis les envoyer au professeur.

Pour me simplifier un peu la vie, j'ai décidé d'adopter un classement des documents assez simple : un dossier par jour, avec un sous-dossier « In » pour les documents reçus du professeur, et un sous-dossier « Out » pour les devoirs scannés à envoyer. Devant répéter cette action quatre fois par semaine, il était logique de créer une macro pour le faire automatiquement pour moi. Comme souvent, j'ai utilisé Keyboard Maestro, qui est à mon avis la solution la plus simple pour cela.

Voici la macro. Pas besoin de la recréer, [vous pouvez la télécharger en cliquant sur ce lien.](/files/move-to-devoirs-folder.zip) **Il faudra changer la variable « zeBasePath » avec le chemin vers votre dossier de base (celui dans lequel le dossier par date sera créé). Il faut que zeBasePath finisse avec un /. Vous pouvez utiliser le raccourci ~ pour indiquer votre dossier utilisateur.** Pour déclencher la macro, je l'ai mise dans une palette dans le Finder.

Pour utiliser cette macro :

* Sélectionnez dans le Finder les documents que vous voulez automatiquement placer dans le nouveau dossier In.
* Déclenchez la macro, par exemple avec un raccourci clavier ou à partir d'une palette Keyboard Maestro.
* La macro va alors vous demander de confirmer la date du dossier à créer, elle va créer le dossier et les sous-dossiers, puis elle va déplacer tous les documents que vous avez sélectionné dans le Finder dans le sous-dossier « In » nouvellement créé.
* Enfin, la macro ouvrira automatiquement le nouveau dossier dans le Finder. Et voilà !

![Macro Dossiers Devoirs](/pictures/2020/06/macro-dossiers-devoirs.jpg)
