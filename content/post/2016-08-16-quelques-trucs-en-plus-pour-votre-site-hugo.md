+++
title      = "Quelques trucs en plus pour votre site Hugo"
author     = "Pierre Morsa"
date       = "2016-08-16"
categories = [ "Technomagie", "Hugo" ]
draft      = false
+++

Si vous avez suivi mon guide pour [migrer un blog Wordpress ou un site Wordpress vers Hugo][lnk_1], cet article vous donne quelques trucs utiles en plus.

## Faciliter l'indexation du site avec sitemap.xml
Hugo génère automatiquement une "sitemap" de votre site appelée sitemap.xml. Renseignez celle-ci dans les Google Webmaster tools pour garantir la bonne indexation de votre site par le moteur de recherche.

## Intégrer Google Analytics
Mon blog n'utilise aucun "tracker", mais Hugo fournit l'intégration avec Google Analytics en standard.
Il suffit d'ajouter la ligne suivante dans le fichier config.toml
`googleAnalytics = "UA-123-45"`

Remplacez UA-123-45 par votre code d'identification Google Analytics.

## Générer un fichier robots.txt
Hugo dispose de la capacité de générer un fichier robots.txt à partir d'un template comme le reste des pages du site. Pour plus d'informations visitez la page d'aide [Custom Robots](http://gohugo.io/extras/robots-txt/).

## Résoudre le problème des accents dans les liens Hugo sur Mac
Il existe un problème connu avec les liens ou les noms de catégories accentués avec Hugo sur Mac. C'est un problème spécifique à la façon dont le Mac encode les caractères accentués : il utilise le code Unicode NFD (l'accent et la lettre sont stockés séparément comme deux caractères) alors que Hugo utilise le code NFC (le caractère accentué est stocké comme un caractère unique).

Si vous avez un nom de catégorie avec un accent, comme par exemple « Présenter en public », cela va fonctionner localement sur le Mac mais pas sur le serveur distant. La solution préconisée consiste à utiliser rsync pour faire la synchronisation des fichiers. De plus c'est beaucoup plus rapide que d'utiliser un client sftp ! Le truc est d'utiliser l'option `--iconv=utf-8-mac,utf-8` qui forcera la conversion des caractères accentués du format NFD au format NFC. La commande rsync complète que j'utilise est la suivante :
`rsync -a --exclude '.DS_Store' --iconv=utf-8-mac,utf-8 --progress public/ user@serveurdistant:/chemin/distant/`

Si je décompose les options, cela donne :

* `-a` pour utiliser le mode archive de rsync
* `--exclude '.DS_Store'` pour exclure les fichiers .DS_Store de la synchronisation.
* `--iconv=utf-8-mac,utf-8` est l'option magique qui force la conversion des caractères accentués du format NFD au format NFC.
* L'option `--progress` n'est pas indispensable, elle permet juste d'afficher la progression de la synchronisation.
* `public/` est le nom du répertoire local contenant les fichiers générés par Hugo (**attention le / à la fin de public/ est très important sinon rsync créera un répertoire nommé "public" sur le serveur distant**). 
* `user@serveurdistant:/chemin/distant/` contient le nom d'utilisateur, le nom du serveur et le chemin où il faut copier les fichiers (c'est le répertoire du serveur web contenant les fichiers de votre site).

## Obtenir plus d'aide
Si vous êtes bloqués et ne trouvez pas la réponse à votre problème il vous reste une solution : visiter le forum de Hugo (en anglais) : [Forum de discussion Hugo](https://discuss.gohugo.io)

[lnk_1]: /post/2016-08-08-comment-migrer-un-blog-wordpress-sous-hugo/