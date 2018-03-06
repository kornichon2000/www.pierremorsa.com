+++
title       = "Utilisez Firefox au lieu de Safari pour tester votre connexion internet sur Mac"
author      = "Pierre Morsa"
date        = "2018-03-26"
publishdate = "2018-03-26T05:00:00+01:00" 
categories  = [ "Technomagie" ]
draft       = true
+++

Depuis le mois de janvier j’ai la chance d’avoir une connexion internet rapide pour mon home office. Il y avait cependant quelque chose que me chiffonnait : en dépit d’une connexion Gigabit sur chaque maillon (Ethernet et fibre), lorsque j’exécutais un test de performance avec nperf.com ou speedtest.net les débits descendants (téléchargement) restaient bloqués autour de 250 à 300Mbits. 

J’ai d’abord suspecté Orange d’avoir oublié d’activer l’option 1 Gbit. Mais j’ai commencé à me dire qu’il y avait quelque chose de pourri dans mes tests lorsque j’ai essayé de télécharger macOS El Capitan depuis les serveurs d’Apple. Car dans ce cas la vitesse de téléchargement était supérieure à 100 Mo/s, une vitesse proche du maximum réel d’une connexion 1Gbit/s. Plus étrange encore, j’obtenais des résultats deux fois plus élevés avec... Edge dans une machine virtuelle Windows 10 !

Quelques recherches plus tard, il semble que le problème vienne de Safari qui fausse le test. J’ai donc refait le test sur Firefox, et là miracle, les débits mesurés sont excellents ! Donc si vous devez faire des tests de débit sur Mac, n’utilisez pas Safari, préférez Firefox.