+++
draft       = false
date        = "2022-01-24"
title       = "Comment masquer les tendances dans Twitter"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

Il y a un truc que je trouve incroyablement toxique dans Twitter : ce sont les tendances, les *trending topics*, ces mots-clés proposés par Twitter. En général il n’y a que le dernier clash, la dernière provocation ou l’événement scandaleux qui n’apporte que bêtise, colère et absolument rien de constructif. Sur Mac, ceux-ci sont affichés dans la partie droite du navigateur. Heureusement, j’ai trouvé une méthode pour masquer ces horribles tendances dans Twitter.

Pour cela, il vous faudra le bloqueur de publicités 1blocker. Une fois correctement installée, lancez l’application. Celle-ci est dans le répertoire /Applications de votre Mac.

![1Blocker Twitter Tendances](/pictures/2022/01/1blocker-twitter.jpg)

Sélectionnez la catégorie « Custom » en haut à gauche de la fenêtre, puis « Hide Elements » puis cliquez sur « New Rule » en bas à droite de la fenêtre.

Ensuite, il suffit d’ajouter la règle de blocage personnalisée suivante :

```.css-1dbjc4n.r-1ysxnx4```

![1Blocker Twitter Tendances règle](/pictures/2022/01/block-twitter-trending-topics.jpg)

Cela masquera l’élément CSS avec la classe mentionnée, qui correspond aux tendances Twitter, et cela libérera les neurones de votre cerveau pour faire quelque chose d’utile.

Note : si cela ne fonctionne pas, vous pouvez me le dire sur Twitter. Ce genre de règle de blocage tient du bricolage, et il suffit que Twitter change le nom de la classe CSS pour que cela ne fonctionne plus.
