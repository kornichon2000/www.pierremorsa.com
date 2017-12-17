+++
title       = "Héberger gratuitement un site Hugo avec Github et Netlify (2/2)"
author      = "Pierre Morsa"
date        = "2017-12-25"
publishdate = "2017-12-25T05:00:00+01:00" 
categories  = [ "Technomagie" ]
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

Pourquoi avec votre compte Github ? Parce que... Netlify va automatiquement vous proposer les différents projets que vous avez stockés sur Github.





