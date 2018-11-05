+++
date       = "2018-11-19"
title      = "Comment lancer une macro Visual Basic depuis un script AppleScript"
author     = "Pierre Morsa"
layout     = "post"
categories = [ "Technomagie" ]
draft      = false
+++

Il est possible de lancer une macro Visual Basic depuis un script AppleScript. Comme souvent, il n’y a pas vraiment d’exemple, il faut donc tâtonner pour trouver comment cela marche. Aussi pour vous éviter la galère je vous donne la méthode.

Dans l’exemple ci-dessous, j’utilise AppleScript pour lancer une macro Visual Basic qui prend deux nombres comme paramètres.

```
	tell application "Microsoft PowerPoint"
		run VB macro macro name "SetShapePosition" list of parameters {200, 100}
	end tell
```

## Un exemple concret : lancer une macro Visual Basic depuis Keyboard Maestro
Visual Basic est beaucoup, beaucoup, beaucoup plus performant qu’AppleScript pour exécuter des actions dans PowerPoint, comme par exemple ajouter une forme sur chaque slide. C’est donc le langage que j’utilise en priorité pour créer des automatisations. De l’autre côté, Keyboard Maestro permet de créer des palettes de commandes parfaitement intégrées à l’interface du Mac. Grâce à la commande AppleScript « run VB macro » je peux faire communiquer les deux facilement.

### 1. Créer la macro à déclencher dans PowerPoint
Voici par exemple deux macros Visual Basic. La première, CopyShapePosSize, copie la position et la taille de l’objet sélectionné. La deuxième « colle » la position et la taille copiée à l’objet sélectionné. C’est génial si par exemple vous devez avoir plusieurs zones de texte avec exactement la même taille et position sur toute une série de slides.

N’oubliez pas de déclarer les variables « Public » au début, car ce sont elles qui vont se « souvenir » de la taille et de la position des objets sélectionnés.

En théorie, il est même possible de sélectionner plusieurs objets : on sélectionne A, B et C (dans cet ordre), on copie leurs positions et leurs tailles, puis ont sélectionne D, E et F et D hérite de la position et taille de A, E de B et F de C, mais je ne suis pas sûr que ça marche bien, car je ne l’utilise jamais et du coup je ne l’ai jamais vraiment testé à fond.

```
Public pLeft() As Single
Public pTop() As Single
Public pWidth() As Single
Public pHeight() As Single
Public pCount As Integer

' CopyShapePosSize
Sub CopyShapePosSize(theParam As String)
    Dim theShape As Shape
    
    ReDim Preserve pPPSSTextAlignHorizontalYes(pPPSSStylesCount)
    
    theCount = ActiveWindow.Selection.ShapeRange.Count
    ReDim pLeft(theCount)
    ReDim pTop(theCount)
    ReDim pWidth(theCount)
    ReDim pHeight(theCount)
    pCount = theCount
    
    For i = 1 To theCount
        Set theShape = ActiveWindow.Selection.ShapeRange(i)
        pLeft(i) = theShape.Left
        pTop(i) = theShape.Top
        pWidth(i) = theShape.width
        pHeight(i) = theShape.height
    Next
    
End Sub


' PasteShapePosSize
Sub PasteShapePosSize(theParam As String)
    Dim theShape As Shape
    
    theCount = ActiveWindow.Selection.ShapeRange.Count
    If theCount > pCount Then
        theCount = pCount
    End If
    
    If theCount > 0 Then
        For i = 1 To theCount
            Set theShape = ActiveWindow.Selection.ShapeRange(i)
            theShape.Top = pTop(i)
            theShape.Left = pLeft(i)
            theShape.width = pWidth(i)
            theShape.height = pHeight(i)
        Next
    End If
    
End Sub
```

### 2. Créer la macro de déclenchement dans Keyboard Maestro
Voici un exemple de ce à quoi peut ressembler la palette dans Keyboard Maestro. On sélectionne un objet A dans PowerPoint, puis on clique sur Copy position and size. Puis on sélectionne un objet B et on clique sur paste position and size. Magie, la position et la taille de l’objet B sont exactement les mêmes que celles de l’objet A !

![Keyboard Maestro Powerpoint Palette](/pictures/2018/11/keyboard-maestro-powerpoint-palette.jpg)

Pour arriver à ce résultat, commencez par créer une « palette » qui sera active uniquement dans PowerPoint.

![Keyboard Maestro Powerpoint Palette Step 1](/pictures/2018/11/keyboard-maestro-powerpoint-palette-step-1.jpg)

Ensuite, créez les deux macros qui vont lancer CopyShapePosSize et PasteShapePosSize. Voici l’exemple pour la macro qui lance CopyShapePosSize, mais c’est exactement la même chose pour l’autre macro.

![Keyboard Maestro Powerpoint Palette Step 2](/pictures/2018/11/keyboard-maestro-powerpoint-palette-step-2.jpg)

Et voilà, fini de galérer à essayer d’aligner chaque élément manuellement pour qu’ils soient identiques sur tous les slides. De toute façon, pour diverses raisons, avec PowerPoint c’est impossible de garantir que la position et la taille sont parfaitement identiques en essayant de le faire manuellement. Cette macro règle le problème.

Le nombre de possibilités est pratiquement infini. J’ai des dizaines de macros similaires qui permettent de gagner un temps fou.