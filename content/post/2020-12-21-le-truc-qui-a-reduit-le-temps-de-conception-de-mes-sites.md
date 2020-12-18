+++
date        = "2020-12-21"
title       = "Le truc qui a réduit le temps de conception de mes sites"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
draft       = false
+++

Note : je ne suis pas un spécialiste du web, je ne m’occupe que de ce blog et du site de ma société.

Si vous avez déjà créé un site web, vous savez déjà qu’une des difficultés majeures est d’être capable d’afficher le site correctement sur tous les types d’appareils : il faut que tout soit lisible aussi bien sur les petits écrans verticaux des smartphones que sur les écrans géants horizontaux des ordinateurs, ceux-ci pouvant faire jusqu’à un mètre de diagonale.

Pour résoudre ce problème, Twitter avait conçu Bootstrap, un système qui facilitait l’adaptation d’un site à différentes tailles d’écran prédéfinies. J’ai utilisé cette solution pendant un bout de temps, à force de classes css et de préfixes pour adapter les différents types de contenus à tous les cas de figure possibles. 

Mais avec la multiplication des tailles d’écran, cela s’est finalement avéré plus frustrant qu’autre chose : il y avait toujours un appareil sur lequel quelque chose ne s’affichait pas correctement. De plus, le nombre de tests à réaliser prenait bien trop de temps.

Alors j’ai choisi une solution radicale. J’ai balancé Bootstrap à la poubelle et je ne vise plus que deux types d’appareils :

1. Les smartphones en position verticale, la plus utilisée.
2. Tous les autres appareils : smartphones à l’horizontale, tablettes, ordinateurs, etc.

Autrement dit, lorsque l’utilisateur est sur un smartphone, on affiche la version mobile. Dans tous les autres cas, on affiche la même version « Desktop ». Dans cette version, nous mettons tout à l’échelle en fonction de la taille de l’écran, par conséquent, le rendu est toujours parfaitement identique d’un écran à un autre. C’est magique ! Tout d’un coup, 90 % des media queries css deviennent inutiles. Le code html5 et css deviennent dix fois plus faciles à maintenir. Et le temps de test du site est divisé par dix.

Il reste bien sûr une ou deux exceptions à gérer. Par exemple, la taille du « hero », l’image qui s’affiche en haut de la page, continue d’être calculée en fonction de l’écran. Et une fois qu’on atteint une certaine taille d’écran, on arrête de mettre à l’échelle le site. Cependant, c’est probablement le choix qui m’a fait gagner le plus de temps dans la mise en œuvre de mes sites.