+++
date       = "2016-06-12T20:17:31+02:00"
title      = "Blog migré sur Hugo !"
author     = "Pierre Morsa"
layout     = "post"
url        = "/blog/blog-migre-sur-hugo/"
categories = [ "Technomagie", "Hugo" ]
draft      = false
+++

Mise à jour du 9 août 2016 : j'ai écrit un tutoriel pour expliquer [comment migrer de Wordpress vers Hugo][lnk_1].
 
Et voilà ! Il m’aura fallu un peu plus de deux heures pour abandonner Wordpress pour mon blog personnel et tout migrer vers [Hugo][1]. L'objectif principal est simple : m’affranchir des problèmes et de la lourdeur de Wordpress.

Wordpress a la philosophie “cacher la complexité pour rendre le blogging facile pour tous”. C’est super, et ça marche… Le problème c’est que quand ça plante ou qu’il y a une faille de sécurité parce qu’un plugin essentiel n’a pas été mis à jour, c’est l’enfer.

À l’opposé Hugo demande de connaître un minimum de technique, mais il n’y a aucun risque de plantage avec les plugins ou les mises à jour, puisque tout le site généré est statique. Cela signifie aussi que le serveur peut respirer car il n’a presque rien à faire pour servir les pages.

J'ai également un objectif secondaire : me rapprocher autant que possible d'un site avec zéro JavaScript et zéro Cookies. Le web est devenu un endroit où on ne peut plus aller nulle part sans être suivi par des dizaines de scripts installés par Google, Facebook et tous les autres. Je n’exagère pas, certains sites comme Le Monde ou The Verge chargent des dizaines de scripts des régies publicitaires pour afficher des pubs qui piquent les yeux. Même si mon site ne compte pas vraiment, je voulais faire un geste symbolique pour montrer qu’un web qui respecte la vie privée est possible.

Ce choix impose certains sacrifices. Ainsi Hugo propose en standard l’intégration de Disqus pour gérer les commentaires, et j’aurais pu m’en servir pour récupérer l’historique des commentaires de WordPress. Mais Disqus utilise JavaScript, et surtout c’est une énième régie publicitaire et utilise son système de commentaires pour vous suivre à la culotte sur le web. Donc adieu les commentaires, c’était cool de pouvoir discuter avec mes lecteurs de mes délires style bureau debout ou découpage de carte SIM au burin, mais ce n’était pas compatible avec le respect de la vie privée.

Allez, j’y crois, on peut avoir un Web qui n’est pas une poubelle où chaque site visité nous affiche les idioties de Outbrain.

[1]: http://gohugo.io
[lnk_1]: /post/2016-08-08-comment-migrer-un-blog-wordpress-sous-hugo/