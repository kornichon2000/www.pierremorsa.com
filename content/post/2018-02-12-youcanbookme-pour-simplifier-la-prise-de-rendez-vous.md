+++
title       = "YouCanBookMe pour simplifier la prise de rendez-vous"
author      = "Pierre Morsa"
date        = "2018-02-12"
publishdate = "2018-02-12T05:00:00+01:00" 
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++

J’expliquais dans ce billet de blog pourquoi il faut toujours proposer trois créneaux lorsqu’on demande un rendez-vous. Cela évite de nombreux allers-retours d’email inutiles. Cependant depuis j’ai trouvé un système encore meilleur : [youcanbook.me](https://youcanbook.me)

YouCanBookMe est une solution de réservation de rendez-vous en ligne. Plutôt que de donner trois dates, j’ai prédéfini les créneaux disponibles. Mon correspondant ayant plus de choix, il peut choisir le créneau qui lui convient le mieux. Cette solution est gratuite pour les fonctionnalités de base, qui je pense suffiront à la plupart des utilisateurs. La version payante offre une fonctionnalité très utile : la possibilité d’envoyer des emails et des SMS de rappel automatiques avant les rendez-vous, ce qui réduit fortement les risques d’« oublis ».

Mon cas d’utilisation est un peu particulier. Je combine principalement des rendez-vous à distance, via Skype ou téléphone, des réunions sur Lille et d’autres sur Paris. Évidemment je ne peux pas me téléporter instantanément d’un rendez-vous à Paris à un autre à Lille. Les jours et les créneaux de disponibilité ne sont donc pas les mêmes pour ces trois types de rendez-vous. J’ai donc créé trois profils de réservation :

* Un pour les rendez-vous à distance
* Un pour les rendez-vous de coaching sur Paris
* Un pour les rendez-vous de coaching sur Lille

Depuis que j’utilise ce système l’organisation de mes sessions de coaching s’est fortement simplifiée. Plus besoin de lutter avec les conflits d’agenda des uns et des autres ou d’échanger des dizaines d’emails juste pour fixer les rendez-vous. Tout se passe en ligne en quelques clics et tout le monde est gagnant.

Pour que tout soit parfait, j’ai dû résoudre un problème lié au fait que j’utilise plusieurs calendriers : un calendrier « travel » pour noter tous mes rendez-vous où je suis en déplacement, et un calendrier « home_office » pour tous les rendez-vous téléphoniques ou Skype, plus deux ou trois autres calendriers pour les événements familiaux et autres. Le problème, c’est que si je note un événement dans mon agenda dans un autre calendrier que celui connecté à YouCanBookMe, le créneau va rester affiché comme disponible, et je risque donc d’avoir une double réservation sur ce créneau.

La première solution consiste à demander à YouCanBookMe de vérifier mes disponibilités face à plusieurs calendriers. Le problème, c’est que chaque calendrier utilisé augmente le coût de l’abonnement mensuel, et je ne souhaite pas payer plus pour le service que je trouve utile, mais certainement pas plus utile qu’Office 365 par exemple. Heureusement il y a AppleScript. J’ai créé un script AppleScript qui tourne à intervalle régulier et qui copie les rendez-vous des autres calendriers dans le calendrier réservé à YouCanBookMe. Ce script fonctionne malgré le nombre assez hallucinant de bugs qu’Apple a laissé dans l’implémentation d’AppleScript de Calendar (Calendrier), et qui imposent parfois d’utiliser des solutions de contournement assez bizarres. Mais le principal c’est que grâce à ce script chaque rendez-vous que je note dans mon calendrier « home_office » par exemple est automatiquement marqué comme étant occupé dans le calendrier « youcanbookme ».

Le deuxième problème que j’ai dû résoudre, c’est que l’affichage du calendrier youcanbookme est peu lisible dans Calendar, puisque s’y mêlent les faux rendez-vous qui servent à déclarer une plage horaire comme disponible, les vrais rendez-vous et les rendez-vous des autres calendriers reportés automatiquement par le script mentionné ci-dessus. J’ai donc modifié le script pour que les rendez-vous pris dans le calendrier youcanbookme soient automatiquement reportés dans un de mes autres calendriers : home_office pour les rendez-vous par téléphone, travel pour les rendez-vous sur Lille ou Paris. Du coup je peux cacher le calendrier youcanbookme dans Calendar pour qu’il ne pollue pas la vue d’ensemble.

Je n’ai aucun doute que mon cas d’utilisation est particulier, que pour 80 % des utilisateurs la solution gratuite de youcanbookme est suffisante, et que pour 19 % des utilisateurs restants la solution payante normale est suffisante. Pour le 1 % restant, c’est l’occasion de montrer à quel point AppleScript peut s’avérer utile pour les cas d’usage plus compliqués, et je ne peux que regretter la négligence d’Apple dont les apps comportent de très nombreux bugs liés à AppleScript.