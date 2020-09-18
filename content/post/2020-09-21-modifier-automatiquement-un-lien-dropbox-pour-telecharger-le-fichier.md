+++
date        = "2020-09-21"
title       = "Modifier automatiquement un lien Dropbox pour télécharger un fichier"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++

Si vous utilisez Dropbox, vous savez qu’il est possible de partager un fichier en créant un lien. Par défaut, Dropbox ouvre le fichier dans un navigateur web au lieu de laisser l’utilisateur le télécharger directement. J’imagine que cela doit lui économiser de la bande passante. Cependant, je préfère envoyer des liens qui permettent de télécharger le fichier directement.

Il existe une méthode connue et toute simple pour changer le comportement par défaut. Chaque lien se termine avec « ?dl=0 ». Si on remplace cela par « ?dl=1 », lorsque l’utilisateur cliquera sur le lien cela déclenchera automatiquement le téléchargement du fichier au lieu de son ouverture dans un navigateur web.

Je répète cette opération très souvent, aussi j’ai créé une macro avec Keyboard Maestro qui modifie automatiquement le lien copié dans le presse-papiers, et je la partage aujourd’hui avec vous.

![Changer un lien Dropbox automatiquement](/pictures/2020/09/changer-lien-dropbox-automatiquement.jpg)

Si je décompose les différentes étapes de la macro, cela donne :

* La macro se déclenche lorsque le contenu du presse-papiers est modifié. Elle se déclenche donc lorsque je récupère un nouveau lien Dropbox dans le presse-papiers.
* Si le contenu du presse-papiers commence par https://www.dropbox.com/ et finit par ?dl=0, alors je remplace ?dl=0 par ?dl=1.

Cette macro donne un aperçu des possibilités qu’offre Keyboard Maestro pour modifier automatiquement le contenu du presse-papiers, mais il en existe beaucoup d’autres : remplacer du texte, le mettre en minuscules ou en majuscules, retirer le formatage, etc.
