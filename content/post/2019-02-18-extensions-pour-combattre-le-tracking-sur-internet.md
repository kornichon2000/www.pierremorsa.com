+++
date        = "2019-02-18"
title       = "Quelques extensions en complément de uBlock Origin"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Nouvelles", "Présenter en public", "Technomagie", "TEDx" ]
draft       = true
+++
La semaine dernière j'expliquais pourquoi j'étais repassé sur Firefox : pour pouvoir bénéficier de uBlock Origin, la meilleur extension pour bloquer la publicité. Mais c'est loin d'être suffisant pour éviter d'être suivi. En faisant quelques recherches, j'ai choisi les extensions suivantes pour compléter mon arsenal :

* Decentraleyes : crée une copie locale de certaines ressources pour éviter de (trop) se connecter aux CDN gratuits, qui monétisent leur service en aidant à vous suivre sur Internet.
* CanvasBlocker : altère « l'empreinte » de votre navigateur, ce qui rend votre suivi plus difficile. Pour plus d'informations sur le *fingerprinting* (l'empreinte), vous pouvez aller sur [Panopticlick, de l'EFF](https://panopticlick.eff.org/), et sur [BrowserLeaks](https://browserleaks.com/).
* Chameleon : offre une série de techniques différentes (et parfois redondantes) de CanvasBlocker pour altérer l'empreinte de votre navigateur. Il permet en particulier de changer le user-agent de manière aléatoire.

Dans mes tests la combinaison CanvasBlocker + Chameleon est la seule qui a réellement réussi, par exemple à altérer la taille réelle de mon écran (oui, les services de suivi savent quelle est la résolution exacte de votre écran). Ces outils ne vous rendront pas du tout anonyme, mais ils contribueront à rendre votre suivi par les publicitaires plus difficile. 
