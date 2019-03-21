+++
title      = "Contrôler PowerPoint avec un contrôleur MIDI"
author     = "Pierre Morsa"
date       = "2017-10-02"
categories = [ "GTD Getting Things Done", "Technomagie", "Mac" ]
draft      = false
+++

Keyboard Maestro fait partie du top 5 des programmes que j'utilise tout le temps pour simplifier ou automatiser mon travail sur Mac. J'ai déjà donné quelques exemples d'actions possibles dans cet article. Depuis la semaine dernière Keyboard Maestro 8 est disponible. Je ne vais pas lister toutes les nouveautés ici, elles sont trop nombreuses, pour cela [rendez vous directement sur la page officielle](https://wiki.keyboardmaestro.com/manual/Whats_New) (en anglais). 

Je vais juste évoquer l'amélioration de la partie MIDI ; il est désormais possible de déclencher des actions à partir d'un contrôleur MIDI. 

J'ai un vieux contrôleur MIDI indestructible qui ressemble à un truc sorti d'un film de SF des années 60. Normalement je m'en sers pour contrôler les amplis virtuels de guitare, mais pour la démo je l'ai utilisé pour contrôler... PowerPoint ! Et pourquoi pas après tout ? Lorsqu'on tourne le bouton 1 la transparence de l'objet change. Le bouton 2 change l'épaisseur du trait. Le bouton 3 change la taille de la police de caractères, etc. Lorsqu'on appuie sur le bouton au dessus cela applique le réglage à l'objet sélectionné (par exemple si le bouton est réglé sur une taille de police 24, appuyer sur le bouton va mettre le texte sélectionné en taille 24).

![Controleur MIDI](/pictures/2017/10/ibk10control.jpg)

L'avantage de ce contrôleur MIDI est d'utiliser des boutons à rotation « infinie », par opposition aux boutons qui se bloquent sur la butée lorsqu'ils ont atteint leur valeur minimum ou maximum. Cela permet de définir la valeur de départ du bouton de manière logicielle. La petite barre sur l'écran LCD représente la valeur courante du bouton.

Ça demande un peu de bricolage pour tout faire fonctionner, mais une fois au point c'est très rigolo de pouvoir régler les paramètres de PowerPoint avec des molettes. Le gain de productivité est (très) discutable, mais je l'ai fait pour montrer les possibilités du contrôle MIDI de Keyboard Maestro 8.
