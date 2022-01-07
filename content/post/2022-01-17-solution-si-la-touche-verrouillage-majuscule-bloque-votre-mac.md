+++
draft       = false
date        = "2022-01-17"
title       = "Solution si la touche « verrouillage majuscule » bloque votre Mac"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

Un problème assez pénible survenait régulièrement sur mon Mac Mini : au bout d’un certain temps, l’utilisation de la touche « verrouillage majuscule » provoquait un gel temporaire de quelques secondes du clavier et de la souris. Ensuite, tout redevenait normal, j’étais bien en mode verrouillage majuscule, mais la diode indiquant son activation ne s’allumait pas. Ensuite, lorsque j’appuyais de nouveau sur la touche verrouillage majuscule pour revenir en minuscules, le clavier et la souris se bloquaient de nouveau pendant quelques secondes.

À force de chercher, j’ai trouvé les solutions possibles suivantes :

* Solution 1 : faire une réinitialisation du SMC. [La procédure à suivre est sur le site d’Apple.](https://support.apple.com/fr-fr/HT201295) Dans mon cas, cela n’a pas résolu le problème.
* Solution 2 : changer de port USB. Mon clavier et ma souris étaient connectés sur des ports USB de mon écran Thunderbolt. J’ai connecté un petit hub directement à un des ports USB du Mac Mini, et j’ai connecté mon clavier et ma souris dessus. Depuis, je n’ai plus de problème avec la touche verrouillage majuscule. Cela a également permis de résoudre un problème de souris au comportement erratique, donc il y a beaucoup de chances que le problème venait des ports USB de mon écran.

Voilà, comme toujours avec ce genre de problème, il peut y avoir des dizaines de causes possibles et autant de solutions différentes, mais cela vaut la peine d’essayer ces deux solutions.
