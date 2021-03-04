+++
draft       = false
date        = "2021-03-08"
title       = "Refaire fonctionner Image Events avec Applescript sur macOS Big Sur"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

Contrairement à Windows, macOS a l’habitude de casser de nombreuses petites choses à chaque mise à jour. Chaque approche a ses forces et ses faiblesses, mais il faut bien avouer que parfois c’est très frustrant d’avoir un script qui marchait très bien et qui tout d’un coup ne fonctionne plus à cause d’une énième décision cachée d’Apple.

Image Events, par exemple, est une application très peu connue qui permet d’utiliser AppleScript pour manipuler les images avec Core Image. Je l’utilise dans certains scripts pour, par exemple, calculer la taille d’une image et son ratio pour pouvoir la redimensionner automatiquement. Image Events fonctionnait très bien, mais depuis macOS Big Sur il semblait ne plus fonctionner.

En cherchant un peu, j’ai trouvé la solution : c’est encore une fois à cause de ces satanées restrictions de sécurité. Pour faire fonctionner Image Events, il faut l’autoriser à avoir accès à tout le disque. Il n’y a pratiquement aucun danger, puisque c’est une des applications intégrées au système.

Pour autoriser Image Events à accéder à tout le disque, il faut aller dans Préférences Systèmes > Sécurité. Ensuite, il faut sélectionner « Full Disk Access » et ajouter l’application Image Events à la liste des applications autorisées à accéder à tout le disque. L’application Image Events est habilement cachée dans le répertoire System > Library > CoreServices > Image Events.app

Et voilà, une fois cette opération effectuée, Image Events peut de nouveau fonctionner correctement. On regrettera encore une fois le fonctionnement assez peu intuitif du modèle de sécurité de macOS.