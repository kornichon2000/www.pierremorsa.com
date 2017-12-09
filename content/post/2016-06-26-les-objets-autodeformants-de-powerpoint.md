+++
author = "Pierre Morsa"
categories = [ "Présenter en public" ]
date = "2016-06-26T17:32:59+02:00"
description = ""
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "Les objets autodéformants de PowerPoint"
draft = false
+++

Si vous utilisez PowerPoint, il vous est peut-être (sûrement) arrivé de créer deux objets de taille identique, mais seulement pour vous apercevoir qu'après avoir été déplacés ils se sont rétrécis ou élargis d'un pixel ! C'est le fantastique mystère des objets autodéformants de PowerPoint.

Pourtant la raison est assez simple. PowerPoint mesure les objets en points ; une présentation 4:3 classique fait 720 points x 540 points. Mais dans la version Européenne de PowerPoint les mesures sont faites en centimètres. La présentation fait 25,4 cm x 19,05 cm. À quoi cela correspond-t-il ? À rien de bien concret, mais c'est comme ça. 

Le problème c'est que du coup, pour ses calculs internes Microsoft convertit les centimètres en point.

1 cm = 1 cm * 72 points / 2,54 cm = 28,3464566929134 points

Soit un joli chiffre que PowerPoint devra arrondir à un moment donné ou un autre. Résultat, les erreurs d'arrondi vont lentement déformer l'objet au fur et à mesure de ses déplacements.

Les personnes qui travaillent en pouces sont relativement épargnées par ce problème puisque 1 pouce = 72 points dans PowerPoint, un chiffre rond.

Pour éviter le problème Microsoft a bien essayé de... redéfinir le cm comme valant 2,4 pouces au lieu de 2,54 mais le remède était pire que la solution et a été rapidement abandonné.

La solution est pourtant toute simple, il suffirait que Microsoft fasse comme Apple Keynote et utilise les points comme unité de mesure par défaut au lieu des cm, ou au minimum offre cette option.