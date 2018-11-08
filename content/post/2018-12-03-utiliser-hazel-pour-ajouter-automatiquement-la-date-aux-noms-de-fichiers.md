+++
date       = "2018-11-26"
title      = "Supprimer des fichiers en masse dans Slack"
author     = "Pierre Morsa"
layout     = "post"
categories = [ "Technomagie" ]
draft      = false
+++
# Ajouter automatiquement la date aux noms de fichiers avec Hazel
Hazel fait partie de mes outils d'automatisation indispensables avec Keyboard Maestro, Quicksilver et Applescript. Je vais montrer ici comment ajouter automatiquement à un nom de fichier la date à laquelle celui-ci a été ajouté. Cela peut être très utile, par exemple, pour classer facilement les documents scannés par date de réception.

Pour cela, commencez par ajouter à Hazel le dossier contenant les documents à renommer.

Ensuite, créez la règle suivante :

![Hazel Add Date Filename](/pictures/2018/12/hazel-add-date-filename.jpg)

Hazel est un programme très puissant, mais qui peut avoir des conséquences désastreuses s'il est mal utilisé. C'est pourquoi j'ajoute pratiquement toujours une condition de « sécurité ». Ici, je ne traite que les fichiers reçus depuis moins d'une heure, pour éviter qu'en cas de problème Hazel ne décide de renommer de nouveau tous les fichiers, ce qui aurait pour conséquence d'ajouter une deuxième fois la date au nom du fichier. Au pire, seuls les fichiers reçus dans la dernière heure seraient affectés par le problème.

La deuxième partie définit la règle qui renomme le fichier. Il est possible de définir le format de la date. Pour trier les fichiers dar date, il vaut mieux utiliser le format YYYY-MM-DD, par exemple 2018-12-03.


 
