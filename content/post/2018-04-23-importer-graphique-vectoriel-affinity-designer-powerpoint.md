+++
title       = "Copier-coller une illustration au format vectoriel de Affinity Designer vers PowerPoint"
author      = "Pierre Morsa"
date        = "2018-04-23"
publishdate = "2018-04-23T05:00:00+01:00" 
categories  = [ "Présenter en public", "Technomagie" ]
draft       = true
+++
Si, comme moi, vous travaillez souvent avec PowerPoint et Affinity Designer, vous avez dû remarquer que lorsque vous copiez un élément depuis Affinity Designer celui-ci est converti dans un format « bitmap » lorsqu’il est collé dans PowerPoint. L’élément résultant n’est donc plus vectoriel, et ne peut plus être édité.

Heureusement, il existe une solution grâce à... Libre Office. Cette solution est assez tarabiscotée. C’est pourquoi je ne l’utilise que lorsque c’est vraiment nécessaire. Voici comment faire.

1. Dans Affinity Designer, exportez votre illustration au format SVG.
2. Créez une présentation vide dans Libre Office.
3. Utilisez la commande Insert → Image et insérez l’image au format SVG.
4. Faites un clic droit sur l’image et choisissez « Break ».
5. Sauvegardez le fichier au format PPTX, le format de fichier de PowerPoint.
6. Ouvrez le fichier PPTX avec PowerPoint. Et voilà, vous devriez avoir une illustration vectorielle éditable dans PowerPoint !

Cette solution est temporaire. En effet Microsoft a annoncé avoir prévu d’intégrer le support des fichiers SVG dans une future version de PowerPoint. J’espère également que cette fonctionnalité permettra de copier-coller des éléments au format SVG directement entre Affinity Designer et PowerPoint.
