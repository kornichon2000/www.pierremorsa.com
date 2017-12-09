+++
title      = "Bien s'organiser avec OmniFocus 2"
author     = "Pierre Morsa"
date       = "2017-06-12"
categories = [ "GTD Getting Things Done", "Lifehacks", "Technomagie" ]
draft      = false
+++

OmniFocus 2 est un outil de gestion des tâches basé sur la méthode GTD, disponible pour Mac, iPad et iPhone. Après avoir essayé différentes solutions, c'est celle-ci qui a retenu mon choix, car c'est la solution la plus complète et la plus puissante, et surtout elle peut être personnalisée avec AppleScript, le langage d'automatisation d'Apple.

Plutôt qu'un test classique, j'ai voulu décrire comment OmniFocus s'en sort dans une utilisation quotidienne pour quelqu'un qui utilise la méthodologie GTD.

## Quelques points importants sur OmniFocus 2
Premier point qui peut surprendre, le prix. Aujourd'hui nous sommes habitués à avoir une pléthore d'applications gratuites. Ce n'est pas le cas d'OmniFocus, qui coûte environ 80€ dans sa version Pro. Si vous n'avez pas envie de payer pour une application, celle-ci n'est pas faite pour vous.

Le deuxième point à mentionner d'entrée de jeu, c'est la relative complexité d'OmniFocus 2. Si vous n'êtes pas familier avec la méthode GTD alors les nombreuses fonctionnalités d'OmniFocus 2 ne vous seront probablement pas beaucoup plus utiles qu'une simple liste de tâches classique.

Ces deux points ne sont pas faits pour vous rebuter ? Parfait, alors partons à la découverte de cet outil formidable !

## Interface
L'interface d'OmniFocus est similaire sur Mac, iPad et iPhone, même si elle tient compte des particularités de chaque appareil.

![OmniFocus Mac iPhone et iPad](/pictures/2017/06/omnifocus.jpg)

Les interfaces, c'est vraiment une question de goût. Des trois c'est la version Mac que je préfère. Je trouve qu'il est plus simple d'accéder aux détails des tâches, et surtout on peut utiliser AppleScript pour l'automatiser. De plus, elle offre plus d'options de personnalisation, par exemple le choix entre un mode compact et fluide.

Depuis la version 2.5 il est de nouveau possible de personnaliser les polices et les couleurs d'OmniFocus Mac avec des thèmes mais il faut avoir le cœur bien accroché ! Cette opération sera cependant simplifiée par l'utilisation du petit outil dédié OmniFocusColors.

Au final les différentes interfaces font le boulot efficacement, et c'est ce qu'on leur demande. Pour le reste de l'article, je vais me focaliser sur la version Mac qui est celle que j'utilise 90% du temps.

## Un système pensé pour GTD
Comme déjà mentionné, cela n'a pas beaucoup de sens d'utiliser OmniFocus si vous ne connaissez pas la méthodologie GTD. On y retrouve toutes les étapes du processus GTD classique :

* Collecter les tâches dans la boîte de réception (Inbox)
* Organiser par projet
* Exécuter des tâches par contexte
* Revoir les projets

Le diable est dans les détails. Même si je trouve qu'OmniFocus est l'application la plus adaptée à la méthodologie GTD, je regrette que le processus ne soit pas plus fluide. Ce que je veux dire par là, c'est que les onglets "Inbox", "Project", "Review" sont visibles en permanence ; l'utilisateur a alors tendance à y passer plus de temps que nécessaire, 
alors qu'ils devraient être utilisés le moins possible. De plus, j'aimerais que l'interface s'adapte plus intelligemment : voir les projets lorsqu'on trie sa boîte de réception, faire disparaître certains éléments lorsqu'ils sont inutiles, etc.

Mais attaquons-nous au principal. Comment est-ce que OmniFocus s'en sort en tant qu'outil GTD ? Revoyons chaque étape du processus.

## 1. Collecter les tâches dans la boîte de réception
La boîte de réception sert de fourre-tout dans lequel on stocke tous les éléments susceptibles de devenir une tâche. Vous vous rappelez tout d'un coup que vous devez acheter des fleurs pour la fête des mères ? Vous ajoutez une tâche dans la boîte de réception.

OmniFocus offre un raccourci clavier qui permet d'afficher une fenêtre pour saisir une tâche rapidement, sans devoir quitter l'application en cours d'utilisation. Si une tâche vous vient à l'esprit, vous tapez le raccourci, entrez la tâche et fermez la fenêtre. Vous pouvez l'oublier en sachant qu'elle est bien au chaud dans votre boîte de réception et qu'elle sera traitée en temps voulu.

![OmniFocus Mac iPhone et iPad](/pictures/2017/06/omnifocus-quick-entry.jpg)

## 2. Traiter sa boîte de réception
Environ trois fois par jour, je traite toutes les tâches en attente dans ma boîte de réception (le matin en me levant, vers la fin de la matinée et fin d'après midi).

La façon de procéder d'OmniFocus est simple. On clique sur l'onglet "Inbox", on regarde chaque tâche en suivant le processus de décision GTD : est-ce qu'on peut la faire en moins de deux minutes ? Oui, alors on la fait tout de suite puis on la marque comme complétée. Sinon on lui attribue un projet et un contexte. La tâche va alors automatiquement disparaître de la boîte de réception et aller s'ajouter *à la fin de la liste de tâches du projet* qui lui a été assigné.

À cet étape du processus, il y a quelque chose qui me chagrine : j'aimerais vraiment n'avoir qu'une seule boîte de réception à traiter, mais j'en ai deux. Celle d'OmniFocus et celle d'Apple Mail. OmniFocus pourrait fusionner sa boîte de réception avec Apple Mail, pour n'avoir à traiter qu'une seule boîte de réception. Heureusement, j'ai mis au point une solution : un AppleScript qui prend les emails reçus dans Apple Mail et les ajoute directement dans la boîte de réception d'OmniFocus, avec un lien vers le mail d'origine. Ces emails ont également un petit drapeau violet dans Mail tant qu'ils restent en tâche ouverte dans OmniFocus.

De manière générale, c'est un des plus gros reproches que je fais à OmniFocus : il est pensé par « fonctionnalités » plus que par « déroulement du processus ». C'est flagrant dans ce cas, car l'idéal serait de voir les tâches dans la boîte de réception, et en dessous la liste des projets, pour pouvoir simplement glisser-déposer les tâches dans le bon projet et au bon endroit. Omni Group, l'éditeur, a promis de remédier à ce problème. En attendant la solution de contournement recommandée est simplement d'ouvrir deux fenêtres, une qui affiche le contenu de la boîte de réception et une qui affiche la liste des projets, et de glisser-déposer les tâches entre les deux.
  
## 3. Organiser les projets
L'étape suivante logique, c'est d'organiser les projets. Autrement dit, de prendre les tâches affectées au projet et les organiser dans un ordre d'exécution logique. Dans OmniFocus, les projets et groupes de tâches peuvent être « séquentiels » ou « parallèles ». Dans un projet séquentiel, une tâche doit être complétée avant que la suivante ne soit réalisable. Dans un projet parallèle, toutes les tâches non complétées et affectées à un contexte actif peuvent être exécutées. Si on prend comme exemple la liste de tâches suivantes :

* Rédiger le document
* Insérer les images
* Demander le droit d'utiliser les images

Dans un projet séquentiel, « rédiger le document » devra être complété avant que la tâche « insérer les images » ne devienne disponible. Dans un projet parallèle, on pourra indifféremment commencer par rédiger le document, insérer les images ou demander le droit de les utiliser. Personnellement, partant du principe qu'on ne peut faire qu'une chose à la fois, pratiquement tous mes projets sont séquentiels, et je réserve le mode parallèle à des cas bien précis. Utiliser le mode séquentiel me force aussi à organiser les choses de manière logique avant de commencer à travailler, ce qui plus tard évite de perdre du temps à me demander par quoi commencer puis quoi faire ensuite.

## 4. Revoir les projets
Régulièrement, il faut revoir ses projets. Même après l'étape d'organisation, il peut être utile de faire une mini-revue, pour être sûr de n'avoir rien oublié. Pour moi, avoir cette certitude d'avoir tout traité est important, car lors de l'étape suivante, l'exécution des tâches, je passe en mode « autopilote » ; je concentre toute mon attention sur l'exécution des tâches sans perdre d'énergie à me demander que faire maintenant ou si ce que je fais est la bonne tâche, car tout cela je m'en suis assuré lors des étapes 1 à 4.

Dans Omnifocus, il est possible de définir une fréquence de revue des projets, de journalière à annuelle. Dans la pratique, mes projets actifs ont une fréquence de revue journalière, mes projets « waiting for » (en attente de) une fréquence de revue hebdomadaire, les projets repoussés à une date ultérieure ont une date de revue à la date à laquelle le projet redevient actif. Omnifocus étant assez « bête » a ce sujet, il est incapable de définir une fréquence de revue lui-même en fonction du statut du projet. De la même manière, il n'est pas assez intelligent pour éviter de définir la prochaine date de revue un week-end. Heureusement, AppleScript à la rescousse, j'ai un script qui modifie la fréquence et la prochaine date de revue des projets en fonction de leur statut ; c'es là la vraie force d'OmniFocus par rapport à tous les concurrents : si une fonctionnalité ne nous convient pas ou n'existe pas, on peut la créer soi-même !

## 5. Exécuter les tâches « par contexte »
Évidemment, c'est un des piliers de GTD : les tâches se font en fonction du contexte dans lequel on se trouve ; autrement dit, lorsque je suis devant mon Mac seules les tâches que je peux exécuter devant mon Mac vont s'afficher dans le contexte @mac. Si je fais les courses, seules les tâches que je peux exécuter en faisant les courses vont s'afficher. C'est un des principes clés de GTD, qui poursuit toujours le même but : pouvoir exécuter les tâches en mode « autopilote », sans interrompre l'exécution par des prises de décisions inutiles qui font perdre de l'énergie et entraînent un risque de procrastination, style la prochaine tâche est de poster la lettre, ah mais je peux pas, je suis pas au bon endroit, bon, qu'est-ce que je fais après ?

Le système de contexte de GTD a été créé à une époque où cela se faisait plutôt sur papier ou sans outils adaptés. OmniFocus ne permet d'attribuer qu'un seul contexte à une tâche. Un système d'étiquettes serait aujourd'hui probablement plus souple et plus efficace (pouvoir par exemple attribuer les contextes @voyage et @gare à une même tâche).

Peu de choses à dire sur les contextes, c'est simple et ça marche bien. Un des avantages d'OmniFocus est de permettre de personnaliser l'affichage des tâches dans un contexte en fonction de ses préférences. Si je reprends mon exemple précédent de trois tâches :

* Rédiger le document (fait)
* Insérer les images (à faire)
* Demander le droit d'utiliser les images (à faire)

* Si je demande d'afficher les tâches disponibles, OmniFocus va afficher la tâche Insérer pour un projet séquentiel, et les tâches Insérer et Demander pour un projet parallèle.
* Si je demande d'afficher seulement la première tâche disponible, OmniFocus va afficher la tâche Insérer uniquement, que le projet soit séquentiel pour parallèle.

Maintenant que nous avons couvert toutes les étapes du processus GTD, attardons-nous sur quelques fonctionnalités qui font d'OmniFocus un outil bien plus puissant que tous les concurrents. Et commençons par les perspectives.

## Définir des perspectives personnalisées
Les options d'affichage et de filtrage d'OmniFocus sont très nombreuses, et permettent de couvrir presque tous les cas de figure. Mais vous n'avez probablement pas envie de redéfinir l'ensemble des filtres et critères à chaque fois. Heureusement, OmniFocus vous permet de sauvegarder une vue et ses options d'affichage dans des « perspectives ». Pour revenir à votre vue préférée, il suffit alors de cliquer sur son icône dans la barre latérale.

![OmniFocus Mac iPhone et iPad](/pictures/2017/06/omnifocus-perspectives.jpg)

Voici quelques exemples de ce qu'il est possible de faire avec les perspectives :

* Créer une perspective pour n'afficher que les tâches disponibles dans un ensemble de contextes précis.
* N'afficher que les projets en cours d'exécution, pour lesquels aucune tâche n'est active.
* Afficher toutes les tâches dont la date d'échéance est aujourd'hui.

## Synchronisation "push"
Omni Group propose plusieurs méthodes pour synchroniser vos données entre vos différents appareils : via leur serveurs (plus simple) ou via votre propre serveur (plus sécurisé). Personnellement j'utilise la synchronisation via leurs serveurs. La configuration est assez simple et la synchronisation rapide. 

OmniFocus peut utiliser la synchronisation "push", autrement dit lorsqu'un élément est modifié sur un appareil, les modifications sont envoyées presque instantanément sur les autres appareils. Celle-ci peut être désactivée si vous le souhaitez.

À noter que ce service est **totalement gratuit**, ce qui aide à faire passer le coût initial de la licence.

## Intégration mail
Une fonctionnalité très utile est la possibilité de définir une adresse mail spéciale. Tous les emails que vous envoyez à cette adresse vont être automatiquement convertis en tâche. Ça marche très bien !

## En conclusion
OmniFocus 2 reste la solution GTD la plus puissante, toutes plateformes confondues, et nous utilisateurs de Mac sommes bien chanceux de l'avoir. La possibilité d'utiliser AppleScript avec la version Mac permet de créer virtuellement n'importe quelle fonctionnalité supplémentaire ou d'adapter les fonctionnalités existantes. Mon seul regret concernant OmniFocus est un « workflow » (processus de travail) parfois perfectible dans les détails, qui pourrait rendre l'utilisation de l'outil plus simple et plus rapide.

Le prix peut certes paraître élevé, mais au final Omni offre gratuitement l'utilisation d'une solution de synchronisation puissante et efficace là où tous les concurrents font payer un abonnement qui revient au final bien plus cher.
