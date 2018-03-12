+++
title       = "Mini test de la dernière version de PowerPoint Mac"
author      = "Pierre Morsa"
date        = "2018-03-26"
publishdate = "2018-03-26T05:00:00+01:00" 
categories  = [ "Présenter en public" , "Technomagie" ]
draft       = true
+++
Il y a quelques semaines, Microsoft a publié une nouvelle version de PowerPoint qui cache plus de changements qu’il n’y paraît au premier abord. Outre les nouvelles fonctionnalités visibles comme la collaboration en temps réel, PowerPoint partage désormais une bonne partie de son code avec celui de PowerPoint Windows. Quel impact dans l’utilisation quotidienne de PowerPoint ? C’est ce que je vous propose de découvrir ici non pas à travers un test complet (pour cela il faudrait déjà que tous les changements soient documentés clairement par Microsoft), mais à travers un retour d’expérience basé sur quelques semaines d’utilisation.

## Interface : c’est pareil, mais différent.
Si vous faites bien attention, vous allez tout de suite remarquer que de subtiles choses ont changé dans l’interface. Par exemple la bordure autour des « placeholders » a changé. Au lieu des bordures grisées de la version Mac, nous avons désormais les bordures pointillées de la version Windows. Et lorsque vous sélectionnez certains objets ce ne sont plus les poignées de sélection traditionnelles des applications Mac qui s’affichent, mais une bordure et des poignées identiques à celles affichées sur Windows.

Je pense que Microsoft a jeté à la poubelle une bonne partie du moteur graphique Mac historique et l’a remplacé par le moteur graphique de Windows. C’est à la fois bien (réduction des risques de différences d’affichage entre Mac et PC) et à la fois pas bien (l’affichage de certains éléments était meilleur sur Mac et a donc légèrement régressé).

Côté édition des animations, la version Mac reste toujours en retrait par rapport à la version Windows.

## Collaboration temps réel pour les BAC +500
Depuis cette version Microsoft met en avant la possibilité de collaborer en temps réel sur une présentation PowerPoint, un peu comme dans Google Docs. Effectivement, l’implémentation de l’édition collaborative a l’air de mieux fonctionner qu’auparavant, mais son utilisation est extrêmement confuse pour la plupart des utilisateurs. Je m’explique :

* Si vous ouvrez la copie locale OneDrive de votre présentation, l’édition collaborative en temps réel ne fonctionnera pas. Pour qu’elle fonctionne, il faut ouvrir la copie qui est en ligne (dans le Cloud OneDrive). PowerPoint, et Microsoft Office en général, est toujours trop sot pour comprendre qu’il s’agit de la même présentation.
* Les personnes qui n’ont pas Office 365 ne peuvent qu’utiliser l’édition de présentation en ligne (dans leur navigateur Internet). Le problème, c’est que même sur une Microsoft Surface cela ne fonctionne pas de manière fiable dès que le document atteint une certaine taille.
* Les clients ne réalisent pas que de nombreuses fonctionnalités et animations ne sont pas disponibles dans la version en ligne, et se plaignent que certaines choses ne fonctionnent pas alors que le problème est lié à PowerPoint Online.

Au final, lors de mes tests avec différentes personnes, il y a tellement de cas particuliers que c’est un véritable casse-tête de faire fonctionner le mode collaboratif de manière fiable. Seules les personnes qui comprennent toutes les subtilités des versions d’Office et du Cloud y parviennent sans difficulté. C’est ridicule. Dans pratiquement tous les cas, j’ai dû abandonner la collaboration en temps réel et revenir à l’échange de liens traditionnels.

Il faut aussi remarquer que des trois systèmes d’échange de fichiers que j’utilise, Dropbox, OneDrive et WeTransfer, OneDrive est celui dont les clients se plaignent le plus.

En conclusion la nouvelle version de PowerPoint Online a du potentiel, mais le manque flagrant d’attention aux détails en rend l’utilisation quotidienne assez frustrante. Tant que le mode collaboratif ne fonctionnera pas de manière plus transparente, difficile de le recommander. 

## Polices incorporées : complètement bâclé
Désormais les polices incorporées sont supportées sur Mac **si** la police a été incorporée dans la version Windows de PowerPoint. Il est impossible de changer cette option sur la version Mac. Pour ajouter ou retirer la police incorporée, vous devrez le faire sur PowerPoint Windows. C’est problématique dans deux cas :

* Vous voulez réduire la taille de la présentation en retirant la police incorporée.
* Vous voulez utiliser le mode collaboratif temps réel sur Mac, et bizarrement cela ne fonctionnera pas tant que vous avez une police incorporée dans le fichier !

## AppleScript, ça fonctionne toujours !
En fusionnant le code des versions Windows et Mac, on aurait pu craindre la perte du support d’AppleScript sur Mac. Mais il n’en est rien. Contrairement à un petit éditeur comme Apple disposant de moyens limités, Microsoft a les moyens de supporter AppleScript correctement dans Office 365 pour Mac. Pas de régression sur ce point donc.

## Visual Basic : du mieux (beaucoup) et du moins bien (un peu)
Si vous venez du monde Windows et que vous avez déjà essayé de développer en Visual Basic dans Office 365 Mac, vous avez dû rapidement déchanter. Microsoft s’était en effet fortement inspiré de la nullité de l’Éditeur de Script d’Apple : une fenêtre dans laquelle on pouvait taper du code, aucune aide, pas d’outils de débogage, pratiquement rien. La nouvelle version d’Office 365 Mac comble enfin à cette lacune et offre la plupart des outils de développement en Visual Basic disponibles sur Windows. 

Ce n’est cependant pas parfait : le portage de l’environnement de développement a visiblement été fait à la va-vite. C’est particulièrement visible au niveau graphique. Par exemple les boîtes de dialogue Visual Basic ont régressé : elles ont l’air tout droit sorties de Windows 95.

Néanmoins je ne peux que saluer l’effort réalisé par Microsoft pour améliorer Visual Basic dans Office Mac.

## Conclusion
Comme déjà mentionné au début de cet article, ce n’est pas une revue en profondeur de PowerPoint, mais plutôt un mon ressenti en utilisation quotidienne avancée. Mon opinion est assez critique, pourtant PowerPoint Mac évolue **enfin** dans le bon sens, même si certains bugs gâchent un peu le plaisir. Allez Microsoft, il ne manque qu’un peu de polissage pour rendre le tout bien plus agréable et fonctionnel.