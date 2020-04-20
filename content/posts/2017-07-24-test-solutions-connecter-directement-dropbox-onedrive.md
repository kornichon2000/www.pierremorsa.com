+++
title      = "Test de solutions pour se connecter directement à Dropbox et OneDrive"
author     = "Pierre Morsa"
date       = "2017-07-24"
categories = [ "Lifehacks", "Technomagie" ]
draft      = false
+++

Pour faire court, je ne recommande aucune des solutions testées. En effet, aucune de ces Apps n'est assez fiable **et** performante pour offrir un niveau de productivité satisfaisant. 

## Pourquoi utiliser une solution pour se connecter directement à Dropbox et OneDrive ?
Les Apps Dropbox et OneDrive officielles fonctionnent bien (l'App de Dropbox restant la plus fiable et la plus performante). Alors pourquoi diable vouloir utiliser une solution tierce ? Pour deux raisons :

* Tout d'abord cela évite d'être tributaire de certains aspects peu plaisants des clients officiels. Par exemple Dropbox simule une fausse boîte de dialogue pour vous faire saisir votre mot de passe administrateur, un comportement totalement inacceptable.
* Ensuite, les clients officiels vous obligent d'avoir une copie en local pour pouvoir travailler dessus. Résultat, vous avez beau disposer de 1 To dans le Cloud, vous êtes limité par votre maigre disque SSD de quelques centaines de Go.

Il est bien sûr possible de ne synchroniser que certains dossiers, et de laisser une copie des autres uniquement dans le Cloud. Mais que faire lorsque vous voulez accéder à ces documents fréquemment ? Passer par le client web est une solution, mais il serait bien plus agréable de pouvoir accéder à ces documents directement depuis le Finder, comme si on accédait à un serveur distant classique. Et c'est justement cette fonctionnalité qu'offrent les clients tiers.
 
## Les candidats
Après avoir pas mal écumé différents sites, il s'avère qu'il y a trois candidats plus sérieux que les autres :

* CloudMounter
* ExpanDrive
* Mountain Duck (basé sur Cyberduck).

Ces trois candidats font tous les trois la même chose : ils vous  permettent de vous connecter à Dropbox, OneDrive et d'autres services Cloud directement depuis le Finder comme s'il s'agissait simplement d'un serveur de fichiers distant.

## Les sous-doués se connectent au Cloud
Mais... Mais aucune de ces trois solutions ne fonctionne de manière satisfaisante.

CloudMounter se connecte, certes. Je n'ai pas relevé de dysfonctionnement majeur, certes. Mais... la vitesse de connexion est beaucoup trop lente pour être réellement exploitable. Il faut souvent attendre plusieurs dizaines de secondes, voire plus d'une minute pour simplement lister le contenu d'un répertoire. J'ai assez rapidement craqué et abandonné cette option.

ExpanDrive est de loin le plus rapide des trois candidats. Il utilise un mécanisme de cache local qui rend tout très rapide et agréable. Mais... il est rempli de bugs qui ne semblent jamais être corrigés malgré les mises à jour régulières. Par exemple, les caractères accentués vont poser problème sur les fichiers stockés dans Dropbox. Les opérations de copie et de suppression échouent régulièrement pour différentes raisons et lorsque cela arrive la seule solution consiste à aller effacer le cache manuellement. Malgré de nombreux essais je ne suis jamais parvenu à rendre cette solution fiable.

Enfin Mountain Duck s'appuie sur le moteur de Cyberduck, ce qui devrait être un gage de qualité. Malheureusement Mountain Duck souffre également de problèmes de lenteur rédhibitoires. En l'utilisant j'ai parfois eu l'impression d'être revenu dans les années 2000, où certaines opérations de copie déclenchaient systématiquement un gel complet du Finder et l'apparition de la roue colorée de la mort. 

En l'état aucune de ces trois solutions n'est réellement exploitable efficacement au quotidien, je ne peux donc pas vous en recommander une. Cependant je garde espoir, et j'essaie régulièrement les nouvelles versions en espérant enfin trouver le Graal du Cloud.

## Quelques notes supplémentaires
Cyberduck, déjà mentionné plus haut, offre une alternative viable mais finalement pas plus pratique que le client Web pour accéder directement aux fichiers stockés sur Dropbox. De plus Cyberduck (comme la prochaine version de Mountain Duck) intègre directement Cryptomator, la solution de chiffrage des documents dans le Cloud dont je parlais la semaine dernière.

Eltima, l'éditeur de CloudMounter, a un moment donné fait une promo sur son site pour MacKeeper, un pourriciel de la pire espèce. Cela ne me donne vraiment pas confiance dans cet éditeur, à tort ou à raison. 

Enfin je garde un œil ouvert sur Transmit 5, la mythique nouvelle version du client FTP de Panic, qui *pourrait* intégrer ce genre de fonctionnalité.
