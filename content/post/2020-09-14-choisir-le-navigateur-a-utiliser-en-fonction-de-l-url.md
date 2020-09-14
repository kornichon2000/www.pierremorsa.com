+++
date        = "2020-09-14"
title       = "Choisir le navigateur à utiliser en fonction de l'URL"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++

J’ai des tics informatiques un peu bizarres. L’un de ces tics est ma volonté d’utiliser des navigateurs web différents pour différents sites. Par exemple, j’utilise Safari Technological Preview pour Google, Dropbox, Zapier et d’autres sites (de manière générale, tous les sites sur lesquels je dois m’identifier). Pour les autres sites, j’utilise la version normale de Safari.

Le problème, c’est que macOS ne permet pas de définir dans quel navigateur doit s’ouvrir tel ou tel lien lorsque je clique dessus. Ils s’ouvrent tous dans le même navigateur, celui défini comme étant par défaut dans les préférences.

Heureusement, comme souvent, quelqu’un d’autre sur terre a eu le même besoin. Et à la différence de moi, il a eu le courage de créer une solution. Celle que j’ai choisie, parce qu’elle est gratuite, s’appelle [Finicky](https://github.com/johnste/finicky). Autant vous prévenir tout de suite, son utilisation est un peu rugueuse. Si vous préférez une solution plus simple qui fait la même chose, ça existe, mais c’est payant.

Une fois installé, Finicky doit être défini comme étant le navigateur web par défaut. Lorsque vous cliquez sur un lien, celui-ci s’ouvrira en fonction des règles que vous avez définies dans le fichier texte « .finicky.js ». Désormais, lorsque je clique sur un lien Dropbox, il s’ouvre dans Safari Technology Preview. Si je clique sur un autre lien, il s’ouvre dans Safari. C’est la magie de l’informatique.
