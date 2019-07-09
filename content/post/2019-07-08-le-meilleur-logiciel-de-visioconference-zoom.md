+++
date        = "2019-07-08"
title       = "Le meilleur logiciel de visioconférence : Zoom"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++
Mise à jour importante du 2019-07-09 15h02 : un problème de sécurité a été trouvé dans le client Mac de Zoom. Zoom refuse pour l’instant de corriger le problème. Je ne peux donc plus recommander cette solution pour l’instant. En attendant, voici un moyen de supprimer le composant problématique et d’empêcher sa réinstallation. Il se trouve dans le répertoire ~/.zoomus

À partir du terminal, allez dans le répertoire .zoomus — Vous pouvez aussi y accéder via le Finder en affichant les répertoires invisibles.

```
cd ~/.zoomus
```

Effacez-en tout le contenu (ATTENTION vérifiez bien que vous lancez cette commande depuis le bon répertoire !!! Sinon vous risquez de tout casser — NE LA LANCEZ PAS avec sudo).

```
rm -rf *
```

Enfin, remontez d’un niveau et empêchez Zoom de réinstaller quoi que ce soit dans ce dossier en le verrouillant en écriture et en le laissant en lecture seule.

```
cd ..
sudo chmod 444 ".zoomus"
```

Vous devrez sûrement entrer votre mot de passe pour autoriser le sudo. Si votre compte n’est pas un compte administrateur, il faudra d’abord vous connecter en tant qu’administrateur (dans ce cas, j’imagine que vous êtes un utilisateur avancé et que vous savez comment faire). Voilà, Zoom ne pourra plus se réinstaller tout seul. Par mesure de précaution supplémentaire, vous pouvez verrouiller le dossier depuis la fenêtre d’information du Finder. 

Pour la petite histoire, j’utilise cette technique avec tous les logiciels qui me gonflent à réinstaller du bazar dont je ne veux pas. À l’époque où Dropbox avait encore droit de cité sur mon ordi, j’avais fait pareil avec ses répertoires.

Article original :

Nous travaillons à distance, mais il est important de pouvoir se parler régulièrement. C’est pourquoi, chaque vendredi, nous faisons une conférence d’équipe à distance, un utilisant la vidéo. Au début, nous utilisions Skype, mais il y avait toujours un bug pour au moins l’un d’entre nous. Et puis un jour je suis tombé sur [Zoom.](https://www.zoom.us)

Zoom est tout ce que Skype aurait dû être : simple et fiable. Nous faisons des conférences jusqu’à plus de dix personnes, et cela fonctionne nickel. Et contrairement à FaceTime, c’est une solution multiplateforme, ce qui fait que je peux l’utiliser avec un plus grand nombre de personnes.

Le seul désavantage de Zoom par rapport à Skype est d’être payant pour faire des conférences à plus de 2 personnes qui durent plus de 40 minutes (et oui, on n’a rien sans rien). Cela reste gratuit pour les conférences à 2 personnes, ou lorsqu’on est plusieurs tant qu’on ne dépasse pas 40 minutes.

Parmi les autres fonctionnalités intéressantes, il est possible d’échanger des messages texte pendant la conférence. Il est également possible de partager son écran pour le montrer aux autres utilisateurs. 

Je rappelle que je ne suis pas sponsorisé, je parle de Zoom simplement parce que cela fonctionne bien.

