+++
draft       = false
date        = "2022-12-19"
title       = "Poster automatiquement sur Mastodon"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie" ]
+++

Aujourd’hui je vais expliquer comment publier automatiquement du contenu sur Mastodon. Auparavant j’utilisais Zapier pour poster un lien sur Twitter lorsque je publiais un nouvel article sur mon blog. Dans les grandes lignes, cela fonctionnait comme suit :

- Je publie un article sur mon blog, le flux RSS est mis à jour.
- Zapier détecte une nouvelle entrée dans le flux RSS et crée un nouveau post (tweet) sur Twitter.

Depuis, j’ai migré sur Mastodon et je souhaite faire la même chose sur cette plateforme. Voici comment j’ai fait.

## Créer une « Application » sur Mastodon

La première chose à faire est de créer une entrée dans Mastodon.

- Ouvrez le site web de Mastodon.
- Cliquez sur « Preferences ».
- Cliquez sur « Development ».
- Cliquez sur « New application ».
	- Application name: Zapier
	- Application website: https://zapier.com
	- Pour les autorisations, vous pouvez tout décocher et cocher seulement « write:statuses » pour autoriser Zapier à créer des posts.
	- Vous pouvez laisser le reste tel quel. Cliquez sur le gros bouton SUBMIT tout en bas.

Voilà, l’App « Zapier » est créée sur Mastodon. Maintenant, allez récupérer le jeton d’authentification. Pour cela, sur Mastodon cliquez sur votre nouvelle app, Zapier. Vous verrez « Your access token » qui est la donnée qui nous intéresse. Mais avant cela, nous devons configurer Zapier.

## Configurer Zapier

Dans Zapier, nous allons créer un « Zap » qui se déclenche lorsqu’un nouvel article est détecté dans le flux RSS. Il y a trois étapes : créer un nouveau Zap, choisir le « trigger » (déclencheur) et enfin l’action.

Nous allons d’abord créer un nouveau Zap :
- Allez sur Zapier.
- Créez un nouveau Zap en cliquant sur « Create Zap ».

Créons maintenant le « trigger » :
- Sélectionnez « RSS » comme App event (évidemment, vous pouvez choisir autre chose selon vos besoins).
- Pour l’événement, j’ai choisi « New Item in Feed ».
- Dans feed URL, je mets le lien RSS de mon blog : https://www.pierremorsa.com/index.xml
- Ensuite je clique sur « Continue ».
- Vous devrez probablement tester votre événement déclencheur avant de pouvoir continuer.

![Zapier vers Mastodon étape 1](/pictures/2022/12/zapier-vers-mastodon-etape-1.jpg)

Enfin nous créons l’action.
- Sélectionnez l’action « Webhooks by Zapier » (désolé, mais je crois qu’il faut un compte payant Zapier pour cela).
- Choisissez l’événement « POST » et cliquez sur « CONTINUE ».
- L’URL est https://mastodon.social/api/v1/statuses (remplacez mastodon.social par le nom de votre instance si vous êtes sur une autre instance Mastodon).
- Payload type: form
- Data : status (avec s minuscule !), puis entrez le texte que vous voulez publier automatiquement. Dans mon cas, c’est « Sur mon blog : titre et URL de l’article.
- Headers
	- Authorization, puis entrez Bearer et le jeton d’authentification récupéré plus haut sur Mastodon. Attention, il faut bien entrer le texte Bearer, UN et un seul espace puis le jeton.
- Cliquez sur “Continue”.

![Zapier vers Mastodon étape 2](/pictures/2022/12/zapier-vers-mastodon-etape-2.jpg)

Et voilà, j’ai un Zap qui va automatiquement récupérer un nouvel article dans mon flux RSS et le poster sur Mastodon. Elle est pas belle la vie ? Vous pouvez donner un joli nom à votre Zap, et si vous voulez vous pouvez ajouter des actions supplémentaires.
