+++
title      = "Comment migrer un blog Wordpress vers Hugo"
author     = "Pierre Morsa"
date       = "2016-08-08"
categories = [ "Technomagie", "Hugo" ]
draft      = false
+++

Courant du mois de juin 2016 j'ai [migré mon blog de Wordpress vers Hugo](http://gohugo.io). Je détaille ici la méthode que j'ai suivi pour les personnes qui souhaitent faire la même chose. Ce guide est loin d'être complet ; si vous vous retrouvez bloqué à une étape, consultez la documentation officielle. Si vous voulez suggérer des améliorations ou des corrections pour le guide contactez-moi directement à monprénom.monnom@pierremorsa.com

Avant de commencer, Sachez que si gérer un blog sur Hugo a des avantages et est à mon goût bien plus agréable que Wordpress, cela demande plus de connaissances techniques. Si vous n'avez jamais utilisé la ligne de commande sous Unix, si pour vous Apache n'évoque rien d'autre que les Indiens, je vous conseille de rester sur Wordpress.

Dans tous les cas :

* **Lisez tout le guide jusqu'au bout de la fin de manière complète et exhaustive avant de vous lancer dans l'aventure.**
* **Gardez une copie de sauvegarde de votre site Wordpress, et surtout ne le désactivez pas avant la fin de la migration.**
* **Ce guide peut contenir des erreurs ou des instructions qui font exploser votre blog, vous vous lancez dans l'aventure à vos risques et périls et sous votre entière responsabilité.**
* **Vous allez fatalement rencontrer un problème non documenté dans ce guide, une bonne connaissance de l'anglais est nécessaire pour consulter la documentation complète de Hugo.**

Ça c'est dit. Perso je ne lis jamais toutes les instructions avant de me lancer dans un truc risqué. Je préfère tout péter, paniquer et lire après.

## Pourquoi migrer de Wordpress vers Hugo ?
La philosophie de Hugo est radicalement différente de celle de Wordpress. Pour schématiser, chaque fois qu'un visiteur charge une page sur Wordpress, Wordpress reconstruit toute la page avant de l'envoyer au visiteur. Hugo construit toutes les page une seule fois, on envoie les pages sur le serveur Web Apache ou autre qui se charge d'envoyer les pages statiques préconstruites au visiteur.

Pour moi les deux grands avantages de Hugo sont la vitesse et la sécurité. Le désavantage est l'impossibilité de servir du contenu "dynamique", par exemple des commentaires[^1], un compteur ou du contenu qui changerait à une date précise[^2]. Les avantages et désavantages de Wordpress sont exactement à l'opposé.

Testez bien Hugo avant de décider si oui ou non cette solution peut convenir pour votre blog.

[^1]: Ce n'est pas tout à fait vrai car Hugo supporte de manière native l'intégration avec Disqus, une plateforme de commentaires. J'ai choisi de ne pas l'utiliser car elle utilise JavaScript et elle enregistre vos visites de site en site.
[^2]: Pas tout à fait vrai non plus, JavaScript permettant de contourner certaines limites, mais pas toutes.

## Installer Hugo sur votre ordinateur
J'ai installé Hugo sur un Mac, mais il est disponible pour d'autres plateformes, dont Linux et Windows. Pour le télécharger, allez sur la page Github [des versions de Hugo](https://github.com/spf13/hugo/releases). Ensuite, le mieux est de l'installer dans un des répertoires d'où il sera accessible depuis la ligne de commande. Je l'ai mis dans
`/usr/local/bin/`

Lancez le terminal et faites un test. Tapez
`hugo help`

Vous devriez voir s'afficher l'aide de Hugo. Si cela fonctionne, félicitations, vous venez d'installer Hugo ! Vous pouvez maintenant passer à l'étape suivante : créer votre premier site, dans ce cas votre blog.

## Créer votre blog sur Hugo
Assurez-vous avant toute chose d'être dans le bon répertoire. Si nécessaire déplacez-vous jusque dans le bon répertoire à coups de cd. Prêt ? Pour créer le site, il suffit de taper 
`hugo new site nom-du-site`

Par exemple pour créer www.pierremorsa.com il faut taper `hugo new site www.pierremorsa.com` - le nom du répertoire n'a pas réellement d'importance et j'aurais pu créer www.pierremorsa.com avec la commande `hugo new site toto`, Hugo aurait alors créé mon site dans un répertoire nommé toto.
 
Hugo va automatiquement créer presque toute la structure nécessaire à un nouveau site, à l'exception de deux éléments indispensables : le thème et bien sûr le contenu.

## Ajouter un thème
À la louche, le concept des thèmes de Hugo est similaire à celui de Wordpress. Dans le détail, il est très différent. On choisit un thème, et Hugo se charge de définir le look et la structure des pages. Et tout comme pour Wordpress l'idéal est de partir d'un thème existant.

Allez sur [le répertoire des thèmes Hugo](http://themes.gohugo.io) et choisissez un thème qui vous plaît et convient à un blog. Mon blog utilise une version modifiée du thème [Hugo Future Imperfect](http://themes.gohugo.io/future-imperfect/).

Téléchargez le thème, dézippez-le si nécessaire, puis faites glisser le dossier dans le répertoire themes de votre site.
```
nom-du-site
    - themes
        - répertoire du thème
            - fichiers du thème
```

## Configurer le site
Une fois le thème installé, il ne reste qu'une étape avant de pouvoir passer au contenu : configurer le site. Tout se passe dans le fichier au doux nom de
`config.toml`

Contrairement à Wordpress, il ne suffit pas de prendre un nouveau thème et l'activer pour que ça marche, chaque thème requiert une configuration spécifique du fichier config.toml ou il ne fonctionnera pas correctement. Oui, c'est moins facile que sur Wordpress mais c'est une approche différente.

Commencez par **copier** (pas déplacer) le fichier exemple `/votre-site/themes/nom-du-theme/exampleSite/config.toml` vers le répertoire racine de votre site `/nom-du-site/config.toml`. C'est la copie que nous allons modifier, l'original pourra être utile pour revenir en arrière si vous cassez tout (notez que je dis nous modifions, vous cassez, mais je casse tout régulièrement).

Si vous avez une barbe ou une moustache d'ingénieur ou un t-shirt Grateful Dead vous savez comment utiliser `vi` `pico` `nano` et autres pour éditer le fichier. Perso j'ai vraiment l'air moche avec une moustache, je préfère les éditeurs graphiques comme Textmate ou Espresso.

Le fichier de configuration contient tous les paramètres spécifiques au site : son nom, son url, et si le thème est fait correctement tous les textes à traduire dans une autre langue si nécessaire (et si vous lisez ce blog c'est probablement que vous allez les traduire en français).

Vous pouvez indiquer à Hugo le thème à utiliser comme option de la ligne de commande à chaque fois, mais je trouve qu'il est plus simple de le configurer une bonne fois pour toute dans le fichier config.toml. Pour ce faire, ajoutez au début la ligne
`theme = "nom_du-theme"`

nom-du-theme est le nom exact du répertoire contenant le thème. Il faut bien inclure les guillemets autour du nom, et il ne faut renseigner que le nom du répertoire du thème, pas le chemin complet.

## Démarrer le serveur de test de Hugo
Hugo dispose d'un serveur web intégré qui rafraîchit en temps réel les pages chaque fois que vous modifiez quelque chose sur le site, que ce soit le contenu, la configuration ou un élément du thème comme les styles css ou le code d'une page. Cela permet de savoir presque instantanément si les modifications que l'on vient de faire fonctionnent correctement. Mais... allez-vous me dire, Hugo est un générateur de sites et il doit pourtant reconstruire les pages à chaque fois, comment cela peut-il être aussi rapide ?  Simplement parce que Hugo est très rapide ; il met environ 1 ms (oui millisecondes) pour construire une page. Bref, démarrons le serveur de test avec la commande
`hugo server`
Voilà. Lancez votre navigateur préféré et allez sur 
`localhost:1313`
C'est l'adresse du serveur de test, et vous devriez immédiatement voir votre page d'accueil s'afficher.

Attention, si l'url de votre site contient un sous-répertoire, par exemple `http://monsite.com/fr/` vous devez taper `localhost:1313/fr/`.

## Écrire votre premier article
Pour créer un nouvel article (post en anglais) Appelé Toto sous Hugo, tapez
`hugo new /post/toto.md`

Cette commande va créer un nouveau fichier nommé `toto.md` contenant les informations de l'article dans le répertoire `/nom-du-site/content/post/toto.md`. Cet article est accessible à l'url de test `localhost:1313/post/toto/`. Vous pouvez très bien décider que vos articles vont dans le répertoire `/content/article/` et taper la commande `hugo new /article/toto.md`.

Il n'est pas obligatoire d'appeler tous vos articles Toto (ha ha ha), mais pour éviter les problèmes liés aux noms de fichiers je vous conseille de n'utiliser que les lettres minuscules a - z non accentuées, les chiffres 0 - 9, le tiret simple - et le "underscore" _. 

Dernier truc, au bout d'un temps il va devenir difficile de retrouver vos petits, aussi je préfixe le nom de mes fichiers d'article avec la date de publication. Par exemple :
`/content/post/2016-08-05-comment-devenir-maitre-du-monde-avec-un-elastique-et-trois-trombones.md`

Une fois le fichier article créé, ouvrez-le dans un éditeur texte. Même Notepad et TextEdit peuvent convenir, mais je vous conseille d'en utiliser un supportant la syntaxe Markdown. Par exemple cet article a été entièrement écrit dans IA Writer, mais vous pouvez très bien utiliser un éditeur hexadécimal si c'est trop simple pour vous.

Un fichier article se comporte de deux parties :

* Le Front Matter, entouré de signes +++, --- ou ===. Sans rentrer dans les détails, le front matter peut être au format TOML (+++), YAML (---) ou JSON (===). 
* Le contenu de l'article lui-même, au format Markdown et constitué de tout le contenu situé sous le front matter.

Voici un exemple de Front Matter au format TOML :
```
+++
title      = "Devenir nomade digital"
author     = "Pierre Morsa"
date       = "2016-08-01"
categories = [ "Lifehacks" ]
draft      = false
+++

Contenu de l'article bla bla bla...
```

Le front matter contient les informations de l'article : la date, le titre, l'url, la description, le statut (draft ou publié), les tags et catégories, etc. Je ne vais pas décrire ici en détail toutes les possibilités, je vous conseille de vous référer à la [documentation de Hugo](http://gohugo.io/overview/introduction/).

Le répertoire `/nom-du-site/archetypes/` permet de définir le front matter par défaut pour un type de contenu précis (post, page, article sont des types de contenus). Référez-vous à la documentation de Hugo pour en savoir plus.

Maintenant, il ne reste plus qu'à écrire votre article au format Markdown. À chaque fois que vous sauvegardez le fichier la page est reconstruite automatiquement par Hugo et rafraîchie par le serveur interne dans votre browser favori. Difficile de faire plus simple !

Important : à ce stade, toutes les pages générées sont encore en local sur votre ordinateur, rien n'est publié sur Internet ni sur Minitel. Nous verrons plus loin comment publier le site généré sur le serveur web.

## En savoir un peu plus sur la structure de Hugo
Avant d'aller plus loin, il est utile de comprendre à quoi correspondent tous les répertoires dans votre site.

`/archetypes/` permet de définir les front matter par défaut pour les différents types de contenu.
`/content/` accueille le contenu de votre site, comme les pages ou les articles.
`/data/` contient les fichiers de données structurées. Pour un blog, vous n'en aurez probablement pas besoin.
`/layout/` est le répertoire qui contient les fichiers personnalisés définissant la structure des pages comme la page d'accueil, les articles, les listes d'articles par tag ou taxonomie, etc. (voir plus bas le fonctionnement de ce répertoire avec les thèmes). 
`/public/` contient les pages statiques générées. C'est le contenu de ce répertoire qu'il faudra publier sur votre site web. S'il est vide c'est que vous n'avez pas encore généré le site (voir plus bas, lancer le serveur interne Hugo n'est pas suffisant).
`/static/` contient tous les fichiers qui ne changent pas, ou rarement. En particulier les styles css, le code JavaScript (que ce site n'utilise pas) et les images.

Lors de la génération des pages Hugo va d'abord essayer de trouver un fichier dans les répertoires propres du site, puis s'il ne le trouve pas il prendra celui du thème. Par exemple il cherchera d'abord le fichier `styles.css` dans `/static/css/` et s'il ne le trouve pas il cherchera le fichier dans `/themes/nom-du-theme/static/css/`.

Pour modifier un thème, il vaut mieux ne pas toucher aux fichiers originaux, mais en faire une copie dans le répertoire propre et modifier cette copie. Honnêtement le fonctionnement des thèmes pourrait être amélioré sur Hugo. 

### la différence entre /content/ et /data/
Vous pouvez vous demander pourquoi il existe à la fois les répertoires /content/ et /data/. De manière générale, si vous avez du contenu qui correspond à une page, par exemple un article, il va dans /content/. S'il s'agit de données structurées ne correspondant pas au texte principal de la page, c'est du /data/. Voici quelques exemples plus concrets :

* Le texte d'une page va dans /content/
* Le texte d'un article va dans /content/
* Une liste des membres de votre équipe va dans /data/
* Une liste de caractéristiques produits va dans /data/

Ce n'est qu'une liste indicative, en effet cela dépend aussi de la façon dont le thème est construit et dont votre site est structuré.
 
## Récupérer le contenu de votre blog Wordpress
Maintenant que vous avez un beau nouveau blog sous Hugo, il faut passer à l'étape pénible. J'ai nommé la migration des données de Wordpress vers Hugo. Selon le nombre d'articles de votre blog cette étape peut être très (très très) longue et surtout très chiante. 

IL existe un [module d'export de Wordpress vers Hugo](https://github.com/SchumacherFM/wordpress-to-hugo-exporter) qui récupère toutes les pages et tous les articles en incluant le front matter, mais il ne marche pas très bien ou pas du tout. À la place vous pouvez utiliser [ExitWP](https://github.com/thomasf/exitwp). Il faut ensuite recopier les fichiers articles dans le répertoire `/content/post/` et les images dans `/static/nom-du-repertoire-images/`.

Vous allez donc avoir après la migration :
```
nom-du-site
    - content
        - post
            - Les articles récupérés
    - static
        - img
            - Les images récupérées
```

Lorsque j'ai récupéré mes articles, j'ai eu la surprise de constater qu'au fil du temps Wordpress avait accumulé des articles au format texte avec différents encodages de caractères et d'autres au format HTML. J'ai donc du passer pas mal de temps à réparer les caractères accentués qui avaient été modifiés ou perdus. Vient ensuite l'étape la plus pénible : vous devrez si nécessaire recréer tous les liens vers les images.

## Récupérer les commentaires de votre blog
**Attention : je n'ai personnellement pas essayé cette étape, je ne peux donc pas garantir qu'elle fonctionne ou vous aider à résoudre d'éventuels problèmes techniques.**

Hugo propose en standard l'intégration avec Disqus, une plateforme de commentaires en ligne. Si vous voulez conserver les commentaires sur vos articles, la méthode préconisée est de :

* À partir de Wordpress, faire migrer les commentaires de Wordpress vers Disqus en utilisant un plugin Wordpress.
* Une fois les commentaires migrés, reconnecter les commentaires Disqus à votre blog sous Hugo.

D'autres Blogueurs expliquent avoir effectué la manœuvre avec succès, mais encore une fois je ne l'ai pas fait, donc je suis incapable de vous aider ou de vous mettre en garde contre d'éventuelles galères.

## Générer le site
À partir de la ligne de commande, tapez
`hugo`
C'est tout ! Même avec des milliers de pages, cela ne prend que quelques secondes. Hugo va génère le site statique dans le répertoire `/nom-du-site/public/`. C'est le contenu de ce répertoire que vous allez maintenant copier vers la racine du site sur votre serveur Web.

## Télécharger les pages sur le serveur Web
Note du 2016-08-16 : désormais je recommande rsync comme méthode de téléchargement des pages sur le serveur Web. [Voir pourquoi dans cet article](/post/2016-08-16-quelques-trucs-en-plus-pour-votre-site-hugo/). C'est plus rapide, et cela résout un problème précis lié aux urls avec accents sur Mac.

Je n'explique pas ici comment créer un site sur Apache ou nginx ou autre, parce que cela prendrait trop de temps, qu'il existe déjà plein de guides en ligne, et que cela peut varier selon la plateforme, l'hébergeur et l'âge de Curtis Newton (vous savez, le Capitaine Flam).

Comme je n'ai pas de moustache, pour télécharger les pages sur le serveur j'utilise Transmit, un programme de transfert ftp et sftp que j'utilise depuis des années, mais n'importe quel autre méthode de transfert peut faire l'affaire. Copiez **tout** le contenu de `/public/` vers le répertoire racine de votre site public, mais pas le répertoire `/public/` lui-même.

Si le site ne fonctionne pas sur le serveur public alors qu'il fonctionne bien sur le serveur interne de Hugo, commencez par :

* Paniquer.
* Vérifier que l'url du site est bien renseigné dans le fichier `config.toml` (une de mes erreurs préférées est de laisser l'url de mon site de test sandboxing au lieu de l'url du site de production). 
* Si ça ne marche toujours pas, vérifiez que vous avez bien copié les bons fichiers au bon endroit : tout le contenu de `/votre-site/public/` doit être copié dans `/chemin-de-votre-serveur-public/votre-site/`. Les fichiers ne doivent pas être dans un sous-répertoire /public/ sur le serveur public.

Note : le serveur interne de Hugo est excellent pour développer et tester son site en temps réel, mais il n'est pas fait pour être utilisé en production. C'est possible mais c'est à vos risques et périls.

## Rigolez des problèmes de sécurité des blogs sur Wordpress
Et voilà. Testez votre site. Émerveillez-vous de sa vitesse. Faites des Oh et des Ah. Ricanez méchamment à la vue de tous ces blogs Wordpress à la merci des Hackers de 7 ans. Fini les mises à jour de plugins qui foirent !

Même si ce tutoriel prend l'exemple d'un blog, Hugo peut très bien servir à générer n'importe quel type de site statique, par exemple le site [presentationzen.training](https://presentationzen.training) est entièrement réalisé sur Hugo.

Si vous avez des questions ou des suggestions sur ce tutoriel, vous pouvez me les envoyer par email (monprénom.monnom@pierremorsa.com).