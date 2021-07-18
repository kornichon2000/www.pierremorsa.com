+++
draft       = false
date        = "2021-07-19"
title       = "Changer la sortie audio depuis la ligne de commande sur macOS"
author      = "Pierre Morsa"
categories  = [ "Technomagie", "Mac" ]
+++

J’ai quatre sorties audio sur mon Mac de bureau. Comme je passe d’une sortie à une autre assez fréquemment, j’ai essayé d’automatiser le processus, mais sans succès. Ni Keyboard Maestro ni AppleScript n’offrent de solution pour changer la sortie son.

Heureusement, comme souvent, quelqu’un a rencontré le même problème et a développé une solution. Dans ce cas, la solution s’appelle [switchaudio-osx](https://github.com/deweller/switchaudio-osx). Elle permet de changer la sortie son à partir de la ligne de commande, et donc depuis Keyboard Maestro ou AppleScript.

La commande suivante va lister toutes les sorties son du Mac.

```
switchaudiosource -a
```

La commande suivante va sélectionner la sortie son du Mac appelée "Mac Mini Speakers".

```
switchaudiosource -s "Mac mini Speakers"
```

Voici l’équivalent dans Keyboard Maestro :

![switchaudiosource-keyboard-maestro-macos](/pictures/2021/07/switchaudiosource-macos.jpg)

À noter que j’ai ajouté le chemin d’accès /usr/local/bin/ devant la commande dans Keyboard Maestro, sinon cela ne fonctionne pas.

Il est également possible de définir l’entrée son utilisée. Par exemple la commande suivante va sélectionner l’entrée "Pass-Thru".

```
switchaudiosource -t input -s "Pass-Thru"
```

Pour voir toutes les options possibles de switchaudiosource, il suffit d’entrer la commande sans aucun arguments.

```
switchaudiosource
```

## Pour installer switchaudio-osx

Je l’ai installé via [Homebrew](https://brew.sh) (je sais, je sais, ce n’est pas la solution la mieux sécurisée du monde, mais c’est trop pratique).

1. Si ce n’est pas déjà fait, [installez Homebrew depuis le terminal](https://brew.sh).
2. Ensuite, installez switchaudio-osx avec la commande ```brew install switchaudio-osx```

Voilà, désormais vous pouvez l’utiliser pour automatiser le changement de sortie audio du Mac.
