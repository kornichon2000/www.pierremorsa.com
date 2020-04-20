+++
title       = "Copier-coller une illustration au format vectoriel de Affinity Designer vers PowerPoint"
author      = "Pierre Morsa"
date        = "2018-04-23"
publishdate = "2018-04-23T05:00:00+01:00" 
categories  = [ "Présenter en public", "Technomagie" ]
draft       = false
+++
Grande nouvelle : depuis la toute dernière version, PowerPoint 2016 supporte nativement le copier-coller et l’import des images au format SVG. Ça tombe bien, Affinity Designer permet de copier les éléments sélectionnés au format SVG (allez faire un tour dans les préférences d’Affinity Designer, il y a une option à cocher pour cela). Ça, c’est pour la bonne nouvelle. La mauvaise nouvelle, c’est que le résultat de l’import ne peut pas être modifié librement dans PowerPoint. Autrement dit si vous collez par exemple un cercle au format SVG, vous pourrez en modifier la couleur du trait et du remplissage, mais pas beaucoup plus. C’est déjà mieux que lorsque l’élément copié était collé au format « bitmap », mais malheureusement ce n’est pas encore suffisant.

Heureusement, il existe une solution pour importer des formes complètement éditables d’Affinity Designer vers PowerPoint grâce à... Libre Office. Cette solution est assez tarabiscotée. C’est pourquoi je ne l’utilise que lorsque c’est vraiment nécessaire. Voici comment faire.

1. Dans Affinity Designer, exportez votre illustration au format SVG.
2. Créez une présentation vide dans Libre Office.
3. Utilisez la commande Insert → Image et insérez l’image au format SVG.
4. Faites un clic droit sur l’image et choisissez « Break ».
5. Sauvegardez le fichier au format PPTX, le format de fichier de PowerPoint.
6. Ouvrez le fichier PPTX avec PowerPoint. Et voilà, vous devriez avoir une illustration vectorielle 100% éditable dans PowerPoint !
