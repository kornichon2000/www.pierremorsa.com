+++
title      = "Automatiser ses tâches sur Mac"
author     = "Pierre Morsa"
date       = "2017-03-06"
categories = [ "GTD Getting Things Done", "Lifehacks", "Technomagie" ]
draft      = false
+++

Je l'avoue. Je suis un fanboy de l'automatisation des tâches sur Mac. Pour moi :

`Automatisation > Délégation > Répétition manuelle`

Autrement dit, par ordre d'efficacité l'idéal est d'abord d'automatiser une tâche. Si ce n'est pas possible, essayer de la déléguer, mais ce n'est pas très sympa pour la personne qui hérite de cette tâche répétitive. En dernier recours on peut faire la tâche répétitive soi-même, encore et encore et encore et encore, comme un Shadok condamné à pomper pour l'éternité.

Les avantages de l'automatisation vont bien plus loin que simplement un gain de temps :

* Automatiser une tâche me force à définir un processus « standard » le plus simple, le plus structuré et surtout **le plus fiable possible**.
* Cela me force à mieux comprendre chaque étape de mon travail quotidien. Je peux mieux identifier les étapes qui créent réellement de la valeur et les étapes qui doivent être supprimées ou simplifiées.
* Au lieu de répéter bêtement la même chose tous les jours, l'automatisation me permet de développer de nouvelles compétences très utiles.
* Je réduis fortement le risque d'erreur humaine, ce qui est particulièrement important avec quelqu'un comme moi !
* L'automatisation augmente le savoir-faire interne de l'entreprise au lieu l'externaliser bêtement.
* Passé le petit investissement en temps initial, cela coûte beaucoup, beaucoup moins cher que la délégation.
* Les tâches automatisées n'ont pas besoin d'être dans « l'inbox », ou y restent beaucoup moins de temps, ce qui libère l'esprit et permet de se concentrer sur les tâches réellement importantes.

Évidemment seules les tâches répondant à certains critères valent la peine d'être automatisées : ce sont celles qui sont répétitives, fréquentes, suivent un processus identique à chaque fois et sont « numérisables », autrement dit réalisables sur ordinateur. Il faut aussi bien soupeser le gain de temps potentiel face au temps de développement et surtout **le temps de maintenance au fil du temps**, certains mécanismes d'automatisation ayant tendance à se « casser » au bout d'un temps, surtout ceux devant simuler des clics sur des éléments d'interface comme des boutons ou des images.

## Ma boîte à outils pour automatiser les tâches sur Mac
La simplicité et la fiabilité de l'automatisation sont des critères essentiels. C'est pourquoi je n'utilise que des outils dont j'ai pu éprouver la fiabilité. Le cœur de mon système repose sur quatre applications et un service Web :

* [**Keyboard Maestro**](http://www.keyboardmaestro.com/main/) : crée des Macros très évoluées sur Mac. Une Macro est une séquence d'actions automatisées. Par exemple, Keyboard Maestro peut redimensionner une image, la convertir et la sauvegarder dans un format précis. C'est aussi le programme que j'utilise pour tous les raccourcis texte (par exemple si je tape l'abréviation « eml », mon adresse email s'insère automatiquement) 
* [**Hazel**](https://www.noodlesoft.com) : automatise une série d'actions sur les fichiers d'un répertoire de votre ordinateur. Vous pouvez trier automatiquement des fichiers par type dans des sous-répertoires, les renommer, etc.
* [**Script Debugger pour AppleScript**](http://latenightsw.com) : le langage de Script d'Apple permet de piloter certaines applications. Ironiquement la suite Office de Microsoft jouit d'un meilleur support d'Applescript que les applications d'Apple ! Vous pouvez utiliser l'application Script Editor fournie avec chaque Mac pour développer en AppleScript, mais Script Debugger offre un bien meilleur confort de développement pour les scripts complexes.
* [**Fake**](http://fakeapp.com) : un navigateur web qui dispose également de commandes pour automatiser certaines actions, comme remplir un formulaire ou cliquer sur des boutons html. C'est une perle que pratiquement personne ne connaît.
* [**Zapier**](https://zapier.com) : un service web qui connecte des services Web entre eux et exécute des actions automatiquement. Zapier permet par exemple de poster automatiquement un message sur Slack lorsque vous recevez un email sur gmail, ou de stocker toutes les pièces jointes reçues dans son email dans un répertoire sur Dropbox.

Dans la capture d'écran ci-dessous je montre par exemple la palette Keyboard Maestro qui reprend les commandes les plus fréquentes pour Hugo, l'outil que j'utilise pour générer mon blog.

![Une palette Keyboard Maestro][pic_1]

Ces applications (à l'exception de Zapier) ne sont disponibles que sur Mac, mais il existe probablement l'équivalent sur Windows. J'utilise Keyboard Maestro en priorité, car c'est la solution la plus simple et la plus rapide, et AppleScript en dernier recours, car son utilisation requiert souvent plus de temps de débogage. 

En termes de difficulté je dirais que Zapier et Keyboard Maestro peuvent être utilisés par des utilisateurs normaux, Fake et Hazel par des utilisateurs avertis (Hazel étant potentiellement dangereux en cas de mauvaise manipulation) et AppleScript par les personnes connaissant au minimum les bases de la programmation et prêtes à supporter la syntaxe bizarre de ce langage.

## Exemples de tâches automatisées
Automatiser, c'est bien, mais concrètement, que peut-on faire ? Un premier exemple est la revue des factures impayées. Chaque semaine j'ai un système automatique qui passe en revue les factures en retard de paiement dans Filemaker Pro, et en poste la liste sur Slack pour avertir les responsables. Dans une petite structure telle que la nôtre le fait de revoir les factures manuellement ferait perdre du temps précieux à quelqu'un. De plus il y a peu de chances que cette revue se fasse à intervalle aussi réguliers, et à chaque fois cela implique un risque d'erreurs. L'automatisation résoud tous ces problèmes. 

En termes d'automatisation, la seule limite est l'imagination (et le choix des bons outils) ! Voici d'autres exemples de ce que j'ai automatisé :

* Hazel + scanner ScanSnap S1300i : Classer automatiquement le courrier reçu et lui affecter une catégorie pour le retrouver plus facilement plus tard.
* Keyboard Maestro + AppleScript + PowerPoint : Un système élaboré pour simplifier et accélérer la création des présentations (si vous regardez quelqu'un créer une présentation PowerPoint, vous vous rendrez compte à quel point on passe finalement peu de temps à saisir le contenu et énormément de temps à le mettre en forme).
* Keyboard Maestro + Mail : gestion de modèles types d'emails.
* Keyboard Maestro : raccourcis pour insérer les mots ou les phrases les plus souvent utilisées (par exemple taper eml insère mon adresse email, iossrt insère le numéro de SIRET de mon entreprise). À noter que j'aurais pu utiliser un outil dédié, comme TextExpander out TypeIt4Me, mais je reste fidèle à ma philosophie d'utiliser le moins d'outils possibles.
* Zapier + Site Web + Slack : publication d'un nouveau message sur Slack lorsqu'une nouvelle demande d'information est envoyée via le site web.
* AppleScript + Omnifocus : organisation automatique des projets en fonction de leur statut, signalisation des projets bloqués (qui n'ont plus aucune tâche active), calcul intelligent des dates de revue des projets, etc.
* Organisation automatique de mes fenêtres en fonction de l'application utilisée pour optimiser l'espace de travail à l'écran.

Ce n'est qu'un aperçu, très loin d'être exhaustif, des tâches que j'ai automatisées au fil des années. J'estime que le cumul du temps gagné par chaque automatisation représente **1 à 2 heures par jour**. Soit l'équivalent d'une journée de travail par semaine ! Et c'est sans compter le gain de fiabilité dans l'exécution.

Si vous avez des exemples d'automatisation que vous voulez partager n'hésitez pas à me les envoyer !

Note : je rappelle que je ne suis pas sponsorisé, et que tous les outils cités ici ont été achetés avec mes propres Deniers, parce que je pense que ce sont les meilleurs.

[pic_1]: /pictures/2017/03/keyboard-maestro-palette.jpg
