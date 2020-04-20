+++
title      = "La meilleure solution de chiffrage des documents dans le Cloud"
author     = "Pierre Morsa"
date       = "2017-07-17"
categories = [ "Lifehacks", "Technomagie" ]
draft      = false
+++

Après avoir testé plusieurs solutions de chiffrage des documents dans le Cloud mon choix s'est porté sur Cryptomator. C'est une solution gratuite, rapide, fiable et offrant un bon niveau de sécurité tout en restant simple à utiliser. Cryptomator est également intégré à d'autres solutions comme Cyberduck et Mountain Duck. Elle est également open source, ce qui signifie qu'aucun éditeur ne pourra prendre vos données en « otage » d'un abonnement obligatoire.

## Pourquoi chiffrer ses documents dans le Cloud ?
Stocker ses documents dans le Cloud, c'est potentiellement les mettre à la merci des hackers, qu'ils soient criminels ou supportés par un gouvernement. Ne croyez pas sur parole les communiqués des services comme Dropbox ou OneDrive qui vous disent que vos documents sont protégés ; pratiquement tous ont été victimes d'intrusions plus ou moins graves sur leurs serveurs. De plus leurs employés ainsi que certaines agences gouvernementales ont accès à vos documents.

Si les documents que vous stockez dans le Cloud ne contiennent pas de données sensibles, pas besoin de se prendre la tête, une solution de chiffrage supplémentaire n'est pas nécessaire. Mais si vous y stockez des documents contenant par exemple des coordonnées bancaires, des mots de passe ou des données de vos clients, il vaut mieux les chiffrer.

Le chiffrage est un sujet complexe, aussi je tiens à préciser que vos documents ne sont pas protégés dans le Cloud si vous avez chiffré vos documents localement avec une solution comme FileVault ou Bitlocker. Les documents envoyés dans le Cloud ne bénéficient pas de ce chiffrage.

## Mon choix : Cryptomator
Après avoir testé différentes solutions, Cryptomator est actuellement la seule solution à satisfaire tous ces critères :

* Être open source : s'il y a bien un domaine dans lequel l'open source a tout son sens, c'est dans celui du chiffrage ; en effet seules les solutions open source peuvent être garanties sans porte dérobée (et encore, normalement il faut dans ce cas aussi compiler le code source soi-même après avoir vérifié la signature des fichiers).
* Multi plateforme : Cryptomator est disponible sur macOS, Windows, Linux, iOS et Android. Seules les versions iOS et Android sont payantes.
* Offrir un mécanisme de chiffrage suffisamment solide.
* Autoriser la synchronisation fichier par fichier, voire par bloc modifié. Une solution comme VeraCrypt qui impose de tout resynchroniser pour le changement d'un octet n'est pas utilisable.
* Autoriser la gestion des conflits dans le cas où plusieurs utilisateurs modifient le même fichier en même temps.

### Faiblesses de Cryptomator
La faiblesse principale de Cryptomator est que les fichiers chiffrés font la même taille que les fichiers non chiffrés. Sans être expert, cela doit fortement faciliter le cassage de la clé de chiffrage si un hacker possède une copie de fichier chiffrée et une copie non chiffrée. Normalement c'est un scénario qui ne doit pas se produire, mais si vous copiez des fichiers déjà présents dans Dropbox vers Cryptomator, alors Dropbox possédera une copie chiffrée et une copie non chiffrée du même document.

## Les autres solutions
VeraCrypt est le successeur spirituel du célèbre TrueCrypt. Cependant la philosophie de conception de VeraCrypt en fait un outil destiné au chiffrage de disques locaux plutôt que de documents stockés dans le Cloud.

BoxCryptor existe depuis plusieurs années, et a un fonctionnement similaire à Cryptomator. Mais le code source est fermé et BoxCryptor nécessite un abonnement payant sans pour autant offrir de bénéfices par rapport à Cryptomator. De plus si la maison mère de BoxCryptor met la clé sous la porte vous n'aurez plus aucun moyen de récupérer vos données.

CloudMounter offre un mécanisme de chiffrage intégré, mais le code source est fermé et impossible d'avoir des informations sur l'algorithme de chiffrage utilisé. De plus l'accès à Dropbox depuis CloudMounter est insupportablement lent.

Cyberduck et Mountain Duck intègrent Cryptomator. Si pendant mes tests Cyberduck a bien fonctionné je ne suis pas parvenu à faire fonctionner Mountain Duck de manière satisfaisante, la connexion s'interrompant constamment lors des transfers.

## Conclusion
Le niveau de sécurité par défaut de Dropbox ou OneDrive est suffisant pour des documents ne nécessitant pas de précautions particulières, mais insuffisant pour les documents sensibles : je ne recommande pas de stocker des coordonnées bancaires, mots de passe ou des données client sensibles dans le Cloud sans chiffrage complémentaire. De toutes les solutions que j'ai pu essayer, Cryptomator est celle qui offre le meilleur compromis facilité d'utilisation - sécurité.
