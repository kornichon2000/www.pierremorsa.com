+++
date        = "2018-12-10"
title       = "Éviter les fichiers impossibles à supprimer de la corbeille de macOS"
author      = "Pierre Morsa"
categories  = [ "Technomagie", "Mac" ]
draft       = false
+++
De temps en temps, lorsque vous essayez de vider la corbeille de votre Mac, vous pouvez avoir un message d’erreur vous disant que vous n’avez pas les droits de supprimer les fichiers. C’est gênant, d’autant plus que l’erreur ne va pas se résoudre toute seule. Pour moi, c’est d’autant plus gênant que cela cause une erreur lorsque Hazel essaie de faire le ménage de la corbeille.  C’est pourquoi j’utilise un script qui se déclenche chaque jour pour rendre tous les fichiers de la corbeille effaçables.

```
set thePath to "/Users/yourhomefolder/.Trash/"
do shell script "chflags -R nouchg '" & thePath & "'"
do shell script "chown -R yourusername '" & thePath & "'" user name "yourusername" password "yourpassword" with administrator privileges
do shell script "chmod -R 777 '" & thePath & "'"
```

Il faut remplacer *yourhomefolder* par le nom de votre dossier utilisateur, *yourusername* par le nom d’utilisateur du compte administrateur, et *yourpassword* par le mot de passe administrateur. À ma connaissance, il n’existe malheureusement pas de moyen d’exécuter le script sans spécifier ces informations. Si vous en avez une, je suis preneur de l’info.

Ensuite, j’ai mis ce script dans Keyboard Maestro, qui le déclenche tous les jours à minuit et 1 minute. Voici le résultat :

![Make Trash Files Deletable](/pictures/2018/12/make-trash-files-deletable.jpg)
 