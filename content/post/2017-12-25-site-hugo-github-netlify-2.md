+++
title       = "Héberger gratuitement un site Hugo avec Github et Netlify (2/2)"
author      = "Pierre Morsa"
date        = "2017-12-25"
publishdate = "2017-12-25T05:00:00+01:00" 
categories  = [ "Technomagie", "Hugo" ]
draft       = false
+++

Dans cette deuxième partie nous allons voir comment configurer Netlify pour servir les pages du site. Si vous ne l'avez pas lue je vous conseille de démarrer par la [partie 1 de l'article qui explique comment déplacer le code du site dans Github](/post/2017-12-18-site-hugo-github-netlify-1).

Le truc génial avec Netlify, c'est qu'il s'occupe de faire tout ce qui est généralement bien pénible à configurer :

* Il va être le serveur web des pages
* Il est CDN (Content Distributed Network) pour accélérer la performance du site, et prend entièrement à sa charge la gestion du rafraîchissement du cache. Fini les arrachages de cheveux parce que le cache ne s'est pas mis à jour correctement.
* Il offre un DNS très rapide pour réduire la latence de connexion.
* Il gère le https pour vous (si vous le souhaitez), et force la redirection de http vers https.

Pour pas un roro, c'est déjà super. Mais si en plus je vous dis que Netlify :

* Compile automatiquement le site hugo pour vous à partir du repository Github
* Déploie automatiquement la branche compilée
* Permet de tester autant de branches alternatives (versions de test ou versions futures par exemple) que souhaité
* Permet de faire du A/B testing automatiquement
* Permet de faire un rollback (retour en arrière) simplement en cas de catastrophe.
* Offre un système de gestion de contenu hyper rapide (CMS).

Et tout ça toujours pour zéro roros ? Elle est pas belle la vie ?

## Configurer Netlify
C'est bien beau tout ça, mais du coup ça doit sûrement être compliqué de tout paramétrer. Ben non. La magie de Netlify c'est que tout reste super simple.

### Créer un compte Netlify
Pour créer un compte Netlify, identifiez-vous avec votre compte Github.

![Netlify Signin Github](/pictures/2017/12/netlify-signin-github.jpg)

Pourquoi avec votre compte Github ? Parce que... Netlify va automatiquement vous proposer les différents projets que vous avez stockés sur Github. Donnez l'autorisation à Netlify d'accéder à votre compte Github. Voilà, vous venez de configurer votre compte Netlify.

![Netlify Authorize Github](/pictures/2017/12/netlify-authorize-github.jpg)

### Ajouter son site Hugo sur Netlify
Pour ajouter un site commençons par cliquer sur le bouton « New site from Git ». 

![Netlify New Site From Git](/pictures/2017/12/netlify-new-site-from-git.jpg)

Ensuite, il faut choisir « Github » (ou une des autres options  si votre code est hébergé chez GitLab ou un autre).

![Netlify Create A New Site From Github](/pictures/2017/12/netlify-create-a-new-site-from-github.jpg)

Il faut de nouveau autoriser Netlify à accéder aux repositories GitHub.

![Netlify Github Additional Permissions](/pictures/2017/12/netlify-github-additional-permissions.jpg)

Sélectionnez alors le repository qui contient le code de votre site, dans mon cas « www.testtoto.com ».

![Netlify New Site Choose](/pictures/2017/12/netlify-new-site-choose.jpg)

Il ne reste désormais plus que quelques informations à fournir : 

* Vous pouvez normalement laisser le nom de la branche à déployer à « master » (comme expliqué dans l'article précédent, c'est le nom par défaut de la version « validée »).
* La « Build command » est simplement... ```hugo```
* Le nom du répertoire de publication est ```public```

Une fois ces informations renseignées, vous pouvez cliquer sur « Deploy Site ». En général la compilation et publication d'un site prend entre quelques secondes et quelques minutes maximum.

![Netlify New Site Added](/pictures/2017/12/netlify-new-site-added.jpg)

Netlify attribue automatiquement un URL au nouveau site qu'il gère. Dans mon exemple cet URL est http://eager-hugle-1657a8.netlify.com - Le site est désormais accessible directement à cet URL, mais il ne vous convient certainement pas. Nous allons donc maintenant passer aux étapes 2 et 3 : la configuration d'un nom de domaine personnalisé et du https.

### Configurer le nom de domaine
Mon nom de domaine est pierremorsa.com, et je l'ai acheté il y a un bout de temps... Pour le configurer, il y a deux solutions :

* Modifier les informations du DNS existant pour pointer vers les serveurs de Netlify.
* Ou utiliser les serveurs DNS de Netlify.

Je ne vais décrire ici que la deuxième option, utiliser les serveurs DNS de Netlify. Ils se vantent d'avoir les serveurs DNS les plus rapides du monde. J'ignore si c'est vrai.

Cette opération est rendue la plus simple possible par Netlify, mais elle reste malgré tout assez délicate, et parfois un peu déroutante, car il y a un temps de latence entre le moment où l'on demande la modification des paramètres d'un DNS et le moment où ces changements deviennent effectifs partout dans le monde. C'est une opération à faire le moins souvent possible. 

Cliquez sur « Set up a custom domain ». Si vous avez loupé cet écran, cliquez simplement sur « Domain settings » → Domain management → Domains et cela reviendra au même.

![Netlify Add Custom Domain](/pictures/2017/12/netlify-add-custom-domain.jpg)

Cliquez ensuite sur « Add custom domain », entrez le nom de votre domaine, puis sur Save.

![Netlify Add Custom Domain 2](/pictures/2017/12/netlify-add-custom-domain-2.jpg)

À ce niveau, vous allez probablement avoir une erreur. Cliquez sur le message « Check DNS configuration ». Cliquez alors sur « Set up Netlify DNS for votredomaine.com ».

![Netlify Setup Dns](/pictures/2017/12/netlify-setup-dns.jpg)

Dans l'écran qui apparaît, cliquez sur Create DNS zone. 

![Netlify Create Dns Zone](/pictures/2017/12/netlify-create-dns-zone.jpg)

Netlify crée alors les données de base pour le DNS, mais vous pouvez allez avoir besoin d'ajouter des infos manuellement. Encore une fois, c'est la partie la plus « compliquée » du processus car chaque cas est différent. Par exemple si vous avez un service d'email lié à votre nom de domaine (dans mon exemple email@testtoto.com) vous devrez configurer correctement les données DNS de votre service d'email sinon vos emails vont se perdre dans la nature.

**Une fois cette étape effectuée, allez sur le service chez qui vous avez enregistré votre nom de domaine, et modifiez les serveurs DNS actuels par ceux de Netlify.**

Une fois cette étape terminée, et une fois que les serveurs DNS dans le monde se seront mis à jour, votre site Hugo www.votresite.com sera servi par Netlify hyper rapidement ! Il ne vous restera plus qu'à activer le https pour que tout soit parfait ; l'opération étant très simple, je ne la détaillerai pas ici.