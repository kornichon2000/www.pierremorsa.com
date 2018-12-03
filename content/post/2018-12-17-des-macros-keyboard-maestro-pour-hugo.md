+++
date       = "2018-12-17"
title      = "Des macros Keyboard Maestro pour Hugo"
author     = "Pierre Morsa"
layout     = "post"
categories = [ "Technomagie" ]
draft      = true
+++

Je l'ai déjà avoué, je ne suis pas un "vrai" ; taper tout à la ligne de commande, ça me casse les pieds. C'est pourquoi j'ai créé une palette de Macros avec Keyboard Maestro pour exécuter les commandes Hugo les plus fréquentes. Ces commandes sont :

* Choisir le site sur lequel on veut travailler.
* Créer un nouvel article
* Démarrer le serveur interne Hugo
* Arrêter le serveur interne Hugo
* Générer le site statique
* Générer ou non les brouillons (drafts)
* Nettoyer le répertoire cible

Vous pouvez télécharger les macros ici. Fournies sans garanties et je ne suis pas responsable des dégâts qui pourraient découler de leur utilisation, donc prudence.

Dans Keyboard Maestro créez une palette pour l'application terminal. Importez les macros dedans. Une fois les macros installées et configurées, lancez le terminal. Une palette de macros Keyboard Maestro va apparaître. Il suffit de cliquer sur la commande voulue pour qu'elle s'exécute. Je vous recommande de toujours commencer par choisir le site sur lequel vous allez travailler.

Vous aurez peut-être besoin de personnaliser le chemin d'accès dans les macros, mais si vous utilisez Hugo et Keyboard Maestro vous êtes probablement adepte de la technomagie et cela devrait être simple pour vous.

