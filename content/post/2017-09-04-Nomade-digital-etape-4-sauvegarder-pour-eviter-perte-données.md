+++
title      = "Nomade digital, étape 4 : sauvegarder pour éviter  la perte de données"
author     = "Pierre Morsa"
date       = "2017-09-04"
categories = [ "Nomade Digital", "Technomagie" ]
draft      = false
+++

J'emporte mon ordinateur ou mon iPad un peu partout. Le risque de le perdre ou de le casser  est donc bien réel ; par exemple en 2015 je me suis fait voler mon MacBook Pro dans le TGV.

En fait, la vraie question n'est pas de savoir si vous risquez de perdre des données, mais quand cela va arriver. Car cela fini toujours par arriver. Et lorsque cela se produit, pleurer ne sert à rien. Il faut avoir une sauvegarde de ses données. Ce message a beau être rappelé fréquemment, le nombre d'utilisateurs qui ne font aucune sauvegarde est hallucinant. 

Aussi voici un petit guide expliquant les risques et les solutions pour s'en prémunir. Je n'ai pas expliqué en détail le fonctionnement de chaque solution, sinon cet article aurait fait 100 pages.

## Comprendre les différents risques de perte de données
Différents types d'incidents peuvent entraîner une perte de données ; une bonne stratégie de sauvegarde va vous protéger contre tous les risques. 

En voici une liste non exhaustive, plus ou moins classé du plus probable au moins probable :

1. Vous modifiez un document et vous rendez compte plus tard que vous voulez revenir en arrière pour une raison ou une autre.
2. Vous effacez un ou plusieurs documents par erreur.
3. Votre ordinateur ou un disque tombe en panne.
4. Votre ordinateur et *toutes* vos sauvegardes locales sont volés.
5. Votre ordinateur est hacké (par exemple ransomware).
6. Votre compte Cloud est hacké et détruit.

Une stratégie de sauvegarde idéale va donc vous prémunir contre tous les cas cités. Pour se faire elle doit :

* Garder un historique des versions récentes de vos documents pendant un certain temps, par exemple les 4 dernières semaines.
* Garder une copie à jour de tous vos documents importants ailleurs que chez vous, par exemple dans le Cloud.
* Avoir une copie de sauvegarde déconnectée pour qu'elle ne soit pas endommagée par un éventuel ransomware (par exemple sur un disque dur stocké séparément). Ce cas est celui qui est le moins souvent pris en compte.

## RAID ≠ sauvegarde
Une précision importante avant d'aborder les différentes stratégies de sauvegarde : les systèmes RAID ont pour objectif d'améliorer le taux de disponibilité et la vitesse, ils ne sont pas une protection contre la perte de données. De fait, un système RAID 1 ou plus ne couvre que le cas 3, un disque tombe en panne. Le RAID 0 *augmente* même le risque de perdre des données au lieu de le diminuer.

Un système RAID ne vous protégera pas contre les cas 1, 2, 4, 5 et 6 !

## Sauvegarde locale avec Time Machine
Time Machine va vous couvrir contre les cas 1, 2 et 3, ce qui est déjà pas mal du tout. 

Le matériel nécessaire se limite à un disque externe d'une taille au moins équivalente à la somme des disques que vous voulez sauvegarder.

Time Machine est fourni en standard sur tous les Mac depuis plusieurs années. Pour l'activer connectez votre disque externe qui servira aux sauvegardes, ouvrez les Préférences Système et sélectionnez d'icône de Time Machine.

Inconvénients : Time Machine n'est pas à 100% infaillible, il peut lui arriver dans de très rares cas de perdre les pédales sans vous en informer. La restauration des données avec Time Machine est également assez lente.

## Sauvegarde locale avec CCC, SuperDuper ou ChronoSync
Ces trois outils ont bonne réputation. Ils sont particulièrement efficaces pour se prémunir contre le cas 3. Bien configurés ils peuvent vous protéger contre les cas 1 et 2, même si Time Machine est plus simple pour ces deux cas.

Ils permettent de créer un « clone » de vos disques, autrement dit une copie identique. Dans le cas 3, si votre ordinateur tombe en panne il suffit de connecter le disque clone à un autre Mac et de démarrer sur celui-ci. Si pour vous la disponibilité de votre environnement de production est importante c'est une excellent solution pour ne pas perdre de temps, et elle m'a déjà sorti de situations bien difficiles suite à un gros crash système. L'idéal est d'utiliser un SSD en USB 3 ; cette solution est à la fois rapide **et** compatible avec tous les ordinateurs récents, contrairement à une connexion Thunderbolt.

## Sauvegarde déportée dans le Cloud
Les solutions précédentes vous protègent contre la perte locale de données, mais que faire si vous perdez tous vos disques locaux, suite à un vol ou un incendie ? La bonne stratégie pour se protéger contre ce risque est de faire une copie de ses documents dans le Cloud. Attention cependant à conserver le nom d'utilisateur et le mot de passe quelque part et pas seulement sur votre disque dur local !!! 

À noter que Dropbox conserve également une copie des versions récentes. C'est une double sécurité avec Time Machine.

## Sauvegarde déconnectée (et idéalement déportée)
Il reste le cas des ransomware. Le ransomware va rendre inaccessibles tous les disques connectés à votre machine, c'est à dire les disques principaux mais aussi toutes les sauvegardes locales connectées à l'ordinateur ! Avec l'évolution actuelle, il est également possible que les ransomware futurs bloquent l'accès à vos sauvegardes dans le Cloud (scénario vraiment très pessimiste je l'avoue, qui à ma connaissance ne s'est pas encore produit).

La stratégie pour se prémunir contre ce cas est de garder une copie de sauvegarde *déconnectée*.

L'idéal est de faire ce qu'on appelle une rotation des disques de sauvegarde, par exemple avec deux disques différents. Les semaines impaires vous sauvegardez sur le disque 1 et le disque 2 reste déconnecté, les semaines paires vous faites l'inverse. Bonne nouvelle, Time Machine offre justement la possibilité d'alterner entre différents disques de sauvegarde.

## Ne pas compter que sur le Cloud
Reste le cas numéro 6, votre compte Cloud est hacké. Pour vous protéger contre ce cas, ne stockez pas vos documents uniquement dans le Cloud.

Également, ne gardez pas que la copie locale synchronisée directement par Dropbox. Si les hackers détruisent les données dans le Cloud, l'application de Dropbox va automatiquement supprimer votre copie locale !

## Conclusion
La sauvegarde de base avec Time Machine, CCC, SuperDuper, ChronoSync ou tout autre outil similaire est indispensable. Ne pas la faire est tout simplement inconscient.

Pour les niveaux de sauvegarde supplémentaires, c'est à vous de juger quel est le risque acceptable. Dans mon cas c'est clair, quel que soit le scénario je ne peux pas me permettre de perdre les données de mon entreprise.

La sauvegarde des documents a un coût qui est souvent non pris en compte lors de l'acquisition d'un ordinateur et qui n'est pas très motivant, pourtant il vaut mieux prendre une machine un peu moins chère avec en plus une solution de sauvegarde et être certain de ne pas perdre ses documents.
