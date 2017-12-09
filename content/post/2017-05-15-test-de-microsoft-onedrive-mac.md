+++
title      = "Test de Microsoft OneDrive sur Mac"
author     = "Pierre Morsa"
date       = "2017-05-15"
categories = [ "Lifehacks", "Technomagie" ]
draft      = false
+++

En résumé : si vous avez déjà Dropbox et que vous n'avez pas besoin des fonctions de collaboration de Office Online, restez sur Dropbox. OneDrive fonctionne correctement, mais est plus lent que Dropbox et offre moins de fonctionnalités. Son seul avantage est l'intégration plus poussée, mais très perfectible, avec Office Online.

Si vous vous demandez pourquoi lire mon test plutôt que celui d'un site spécialisé, c'est parce que j'utilise Office 365, Dropbox et OneDrive tous les jours. De plus, je suis totalement indépendant de Microsoft, je n'ai pas à être gentil avec eux pour préserver mon droit d'accès à quoi que ce soit.

## OneDrive : les bases
OneDrive est un des services de stockage dans le Cloud de Microsoft. Parce que rien n'est jamais assez compliqué chez Microsoft, OneDrive est un service différent de OneDrive for Business, il ne faut donc pas confondre les deux. Un peu comme Skype et Skype for Business, qui sont deux trucs différents aussi. Et Office et Office for Business sont différents mais très similaires et compatibles. J'espère que vous suivez toujours.

Il y a trois manières d'accéder à OneDrive depuis son Mac :

* Via l'interface web en utilisant un navigateur comme Safari ou Firefox.
* Via l'app OneDrive téléchargeable gratuitement depuis l'App Store.
* Via une des applications Office 365 : Word, Excel ou PowerPoint. Les autres, comme Microsoft Publisher, ne sont pas disponibles sur Mac, mais franchement vous ne ratez rien.

L'app OneDrive va créer une copie locale des fichiers OneDrive stockés dans le Cloud, et il est possible de limiter la copie locale à une liste de dossiers sélectionnés. L'avantage, c'est que l'ouverture et la sauvegarde de fichiers en local est beaucoup plus rapide que sur un serveur distant. 

![OneDrive Local et Cloud](/pictures/2017/04/onedrive-cloud-local.jpg)

Notez bien la différence entre **OneDrive Local** et **OneDrive Cloud**, car c'est déterminant pour la suite de l'article.

En théorie avec l'app OneDrive on a le meilleur des deux mondes : le stockage dans le cloud avec les fonctions de collaboration et de partage d'Office 365, et la vitesse d'accès aux fichiers du OneDrive local. Mais malheureusement ce n'est pas le cas, la faute à des petits défauts d'intégration qui viennent tout gâcher.

## Premier point qui fâche : c'est lent
Le service de Microsoft est trop lent. Par exemple j'ai essayé d'ouvrir une présentation de 30 Mo dans le Cloud OneDrive depuis PowerPoint, et il a fallu plus d'une dizaine de minutes pour la télécharger et l'ouvrir (débit misérable de quelques centaines de ko sur une connexion câble de 100 Mbps). Peut-être serez-vous plus chanceux que moi sur ce point.

![OneDrive C'est lent](/pictures/2017/04/onedrive-cestlent.jpg)

## Une intégration cloud - local à revoir
Le truc le plus frustrant avec OneDrive Mac, c'est que lorsque vous ouvrez un document Office dans votre dossier OneDrive **local**, Office est trop bête pour comprendre qu'il s'agit d'un document déjà stocké dans le cloud. Si vous essayez d'obtenir un lien pour partager le document avec d'autres personnes, il va vous dire qu'il faut d'abord sauver le document sur... OneDrive (sous-entendu OneDrive **Cloud**), *alors que c'est déjà le cas*. Pour obtenir le lien, il faut donc fermer la copie locale, et ouvrir la copie Cloud...

... Et lorsque vous essayez d'ouvrir la copie OneDrive **Cloud**, Office n'est pas bien malin non plus. Il se rend pas compte qu'une copie locale complète existe déjà et il télécharge à nouveau 100% du document à une allure d'escargot (franchement, c'est vraiment lent comparé à Dropbox). Mais au moins vous pouvez obtenir le fameux lien de partage du document.

Vous êtes donc obligé de choisir entre éditer la copie locale d'un document en bénéficiant de la vitesse ou éditer la copie cloud en bénéficiant des options de collaboration et de partage. OneDrive ne devrait pas nous forcer à choisir et devrait nous permettre de bénéficier du meilleur des deux mondes sans que l'utilisateur n'aie à se poser de question.

## LA raison d'utiliser OneDrive : l'édition collaborative de documents
Il y a une raison bien précise pour laquelle j'ai voulu utiliser OneDrive. C'est que mon métier m'amène très souvent à partager et à collaborer sur des documents Office avec des collègues ou des clients.

Malheureusement là encore, il reste trop de bugs pour que cela soit réellement efficace au-delà d'une collaboration très simple. Par exemple il m'est arrivé plusieurs fois qu'un document se retrouve verrouillé en accès pour une raison inconnue, ou que PowerPoint multiplie de manière anarchique les « Masters » de slides comme d'autres les petits pains lors d'une édition collaborative à plusieurs. De plus comme mentionné plus haut si vous ouvrez la copie OneDrive Locale, Office n'est pas assez intelligent et ne comprend pas qu'il s'agit d'un document disponible dans OneDrive Cloud, et ne vous fait pas bénéficier des fonctions d'édition collaborative. 

Au final c'est bien mieux qu'Office pré-365, mais insuffisant face à des outils comme Google Docs où l'édition collaborative fonctionne sans efforts.

## Conclusion
Je tire une dernière fois sur l'ambulance. OneDrive est incapable de gérer tous les caractères dans les noms de fichiers, alors que Dropbox le fait sans aucun problème depuis des années. Enfin la fonction de sauvegarde des différentes versions de documents de Dropbox est bien plus sécurisante et aboutie que celle de OneDrive.

En l'état il est donc impossible de recommander OneDrive face à Dropbox. Pourtant Microsoft n'est pas loin, en réalité il n'y a que deux choses à améliorer pour faire de OneDrive un bon service :

* Améliorer la vitesse
* Corriger l'intégration fichiers locaux - cloud pour la rendre totalement transparente lorsqu'on utilise Office 365.

Allez Microsoft, un effort et OneDrive peut devenir une bonne solution de stockage Cloud.

![OneDrive Local et Cloud](/pictures/2017/04/onedrive-crottemoji.jpg)

Oui, cette dernière image est totalement inutile.