+++
title       = "Héberger gratuitement un site Hugo avec Github et Netlify (1/2)"
author      = "Pierre Morsa"
date        = "2017-12-18"
publishdate = "2017-12-18T05:00:00+01:00" 
categories  = [ "Technomagie", "Hugo" ]
draft       = false
+++

Dans cette première partie je vous propose un tutoriel pas à pas pour créer le fichier netlify.toml, et héberger le code du site sur Github.

Ce blog est une sorte de cobaye. Je lui fais subir des tas d'expériences lorsque je veux tester ce que cela donne. À l'origine c'était une simple page web, puis il a migré sur Joomla un des premiers « CMS » 100% Web, puis sur Wordpress qui était et est encore la solution préférée de beaucoup de sites. Fatigué des problèmes à répétition de WordPress (sécurité, mise à jour des plugins, etc.) j'ai fini par migrer en 2016 vers un site statique généré par le génial [Hugo](http://gohugo.io).

Jusqu'il y a peu ce blog était encore chez un hébergeur classique, mais depuis la semaine dernière il tourne avec le couple [Github](https://github.com) + [Netlify](https://www.netlify.com). Github stocke tout le contenu et tout le « code » du site (à mon sens ce n'est pas vraiment du code car ça n'exécute rien, mais plutôt des données structurées), et Netlify sert les pages depuis son CDN. À en croire ce test, le résultat en termes de performances me semble plutôt probant :

![Testmysite Pierremorsa Com](/pictures/2017/12/testmysite-pierremorsa-com.jpg)

Évidemment ce test risque de ne pas être 100% impartial vu qu'il est proposé depuis le site de Netlify. Cependant mon autre site [Ideas on Stage](htts://www.ideasonstage.com) a un score presque parfait alors qu'il n'est pas hébergé par Netlify mais par le tandem Dreamhost + Cloudflare, donc je crois à une certaine objectivité.

Je dois dire que je suis très impressionné par Netlify. Son avantage ce n'est pas que la rapidité. C'est aussi tous les outils qui vont autour. En tandem avec Github, il est possible de tester autant de branches différentes que l'on veut (une branche, c'est un peu comme une « version alternative d'un site»). Il est également possible de faire un « rollback », autrement dit de revenir simplement à la version précédente du site en cas de problème. En utilisant un webhook déclenché depuis Zapier j'ai même pu automatiser la publication des nouveaux articles à intervalles réguliers, ce qui était plus difficile à faire avec mon système précédent.

Le seul désavantage c'est que je n'ai plus du tout de statistiques, car je n'avais que les chiffres collectés par défaut par mon hébergeur. C'est facile à résoudre en intégrant Google Analytics, mais ce blog étant garanti 100% sans JavaScript je ne l'utiliserai pas, et pour moi ce n'est pas gênant.

Coût total de l'hébergement avec cette solution : 0€. Oui c'est assez dingue, ça ne coûte rien pour les versions de base. la seule partie qui reste payante est le nom de domaine.

Ci-dessous vous trouverez la procédure que j'ai suivie pour migrer ce blog vers Github + Netlify. Je l'ai réalisé depuis un Mac, mais c'est très similaire depuis n'importe quel autre système. Pour suivre ce tutoriel il vaut mieux :

* Savoir vous servir un peu du terminal
* Comprendre les notions Github de « commit », « branch », « pull » et « push »
* Comprendre comment un DNS fonctionne

## Créez un fichier netlify.toml
À la racine du site, dans le même répertoire que celui qui contient déjà ```config.toml``` il faut ajouter un fichier nommé ```netlify.toml```, qui contiendra les versions de Hugo à utiliser par Netlify pour compiler le site. Voici le contenu de mon fichier netlify.toml :

```
[context.production.environment]
  HUGO_VERSION = "0.31"
  
[context.deploy-preview.environment]
  HUGO_VERSION = "0.31"
```

[Pour les total flemmards vous pouvez télécharger directement le fichier ici](/files/netlify.toml)

## Mettez le code du blog sur Github
Si vous ne connaissez pas du tout Github, à la base c'est une solution pour gérer différentes versions d'un « répertoire ». C'est très utile pour les développeurs, qui peuvent ainsi garder une version stable de leur code et en parallèle travailler sur des nouvelles versions sans devoir tout dupliquer. Qui peut le plus peut le moins. Github peut servir à « versionner » des répertoires de documents, et dans notre cas le code source d'un site.

### Créez un compte Github
Je ne vais pas expliquer cette partie, il suffit d'aller sur [github.com](https://github.com) et de se créer un compte, c'est à la portée du premier utilisateur de Facebook venu. Si comme pour moi laisser le code source de votre site accessible à tous n'est pas un souci, vous pouvez créer un compte gratuit, sinon il faudra payer 7$ par mois pour avoir un repository privé. Gardez bien le nom d'utilisateur et le mot de passe car nous allons en avoir besoin.

Si vous ne connaissez pas le fonctionnement de Github je vous conseille de lire le guide de démarrage car ce n'est pas forcément intuitif, surtout si vous n'avez jamais fait de développement.

**Par contre pas besoin de démarrer un nouveau projet, car nous allons utiliser le répertoire existant sur votre ordi.** 

### Initialisez le « repository » Github
À partir du terminal, allez dans le répertoire qui contient le code du site. Par exemple ```~/Sites/Hugo/www.testtoto.com/```

Une fois dans le bon répertoire tapez la commande suivante pour initialiser le répertoire Github :

```git init```

Vous devriez avoir un message du genre 

```Initialized empty Git repository in ~/Sites/Hugo/www.testtoto.com/.git/```

Voilà, c'est tout, on pourrait tout faire depuis la ligne de commande en tapant des tas de trucs qui font intelligent mais ça me casse les pieds. Je vais donc utiliser le client Github Desktop pour la suite.
 
### Téléchargez et installez Github Desktop. 
Pour ce faire cliquez sur le lien ci-dessous :

[Github Desktop](https://desktop.github.com)

Une fois installé, lancez Github Desktop, et utilisez votre nom d'utilisateur et mot de passe pour vous connecter à votre compte Github.

### Ajoutez votre répertoire git local à Github Desktop
Si l'application ne vous le propose pas par défaut commencez par ajouter votre repository : 

```File → Add Local Repository...```

![Github Add Local Repository](/pictures/2017/12/github-add-local-repository.jpg)

Attention : avant de lancer la copie de vos fichiers vers Github, vérifiez qu'il n'y a pas d'autres répertoires .git cachés dans les sous-répertoires, en particulier dans les répertoires des thèmes, sinon vous risquez d'avoir des erreurs.

Voilà, normalement la barre du haut doit ressembler à ça :
![Github Desktop Top Bar](/pictures/2017/12/github-desktop-top-bar.jpg)

Si nécessaire faites un commit de tous les changements sur la branche master (par défaut master est la branche principale de votre projet, celle qui fait office de référence pour la version « stable » de votre code). L'opération de commit « officialise » les changements, cela signifie, « c'est bon ces changements sont validés et peuvent être publiés ».

![Github Commit Hugo Repository](/pictures/2017/12/github-commit-hugo-repository.jpg)

Il suffit maintenant de cliquer sur le bouton **Publish repository** et tous les fichiers locaux vont être copiés vers Github. 

![Github Publish Hugo Repository](/pictures/2017/12/github-publish-hugo-repository.jpg)

L'avantage est que vous pouvez désormais synchroniser vos modifications locales et en ligne (dans le clllowwd comme on dit). Cependant pour se faire il faut bien comprendre les notions de « branch » et « commit » sinon vous risquez de galérer. J'essaierai de prendre le temps de les expliquer plus en détail dans un autre billet. Pour la suite du tutoriel je vais prendre l'hypothèse que vous modifiez les fichiers uniquement depuis le répertoire local.

Votre site est désormais sur GitHub. Si vous rafraîchissez la page vous devriez le voir apparaître dans la liste des repositories. 

![Github Your Hugo Repository](/pictures/2017/12/github-your-hugo-repository.jpg)

Vous bénéficiez désormais de la gestion des versions, qui est la raison d'être de git. [Dans la partie 2 nous allons voir comment configurer Netlify pour automatiser le déploiement du site et servir les pages aux visiteurs.](/post/2017-12-25-site-hugo-github-netlify-2)

Révisions :

* 2017-12-21 : amélioration de l'explication de certaines étapes en particulier pour Github.