+++
date        = "2019-06-03"
title       = "Mac ARM, Marzipan et Tim le marteau"
author      = "Pierre Morsa"
categories  = [ "Mac", "Technomagie" ]
draft       = true
+++
Bon, c’est quasi certain maintenant que Apple prépare la transition du Mac des processeurs Intel vers ses puces ARM. Personnellement, ça ne m’enthousiasme pas trop.

D’une part, le coup de « mes processeurs sont meilleurs que ceux d’Intel », Apple nous l’a déjà fait plusieurs fois. À vrai dire, depuis toujours. Motorola 68xxx, puis PowerPC. Sur papier, c’était vrai. Dans la vraie vie, les jeux et applications étaient à chaque fois bien plus performants sur PC. Il est vrai que les puces d’Apple ont l’air très performantes, mais je demande d’abord à voir.

D’autre part, la raison numéro 1 pour laquelle je peux utiliser un Mac comme machine unique aujourd’hui, c’est parce que j’ai une machine virtuelle pour faire tourner Windows. Et ça, c’est principalement grâce à la présence d’un processeur Intel.

Enfin, l’utilisation de puces ARM ouvre la voie à la Marzipanisation des apps sur Mac. Encore une fois, non, les apps iOS ne sont pas meilleures que les apps Mac. Non, iOS ne permet pas d’en faire plus que macOS. Certes, les APIs et le socle de développement iOS sont certainement plus modernes que celui de macOS, et jouit d’un bien meilleur taux d’adoption auprès des développeurs. Certes, la mutualisation du code entre les deux plateformes **est une bonne chose**. Ma crainte, c’est que les Apps Mac se retrouvent limitées par les contraintes d’iOS. Par exemple, sur iOS l’interface est conçue principalement pour les doigts. Si les doigts étaient un outil de peinture aussi merveilleux que ça, Michel-Ange les aurait utilisés pour peindre la chapelle Sixtine. Mais il a quand même utilisé des pinceaux. Si les doigts étaient un outil de pointage aussi merveilleux que ça, le Mac les aurait adoptés depuis longtemps. Mais il continue d’utiliser une souris (ou un trackpad) pour cliquer.

La Marzipanification des apps macOS risque bien plus de les dégrader que de les améliorer. Si vous ne me croyez pas, regardez déjà ce qui se passe avec les apps Electron. Construites pour fonctionner sur le plus grand nombre de plateformes possibles, elles sont obligées de s’adapter au plus petit dénominateur commun : la plateforme avec le plus petit écran, le smartphone, et l’outil de pointage le moins précis, le doigt. Résultat : aucune app Electron ne tire réellement parti des capacités des apps Mac natives. Leur interface a une densité d’information ridiculement faible. Toute action demande de faire plusieurs clics qui seraient inutiles dans une app Mac native.

Il reste le scénario où Apple ajouterait une couche pour permettre à une app Marzipan de bénéficier des avantages de l’interface de macOS. Mais c’est très très improbable, et cela n’aurait de toute façon que peu de chances d’être adopté par les développeurs.

Au final, je reste persuadé que Tim Cook n’a jamais vraiment compris l’esprit du Mac. Il n’a jamais compris ce qui en faisait sa force et sa spécificité, et comment il pouvait en tirer avantage. Il est comme un marteau qui voit tout comme un clou, et ne comprend pas la subtilité du fonctionnement d’une vis.
