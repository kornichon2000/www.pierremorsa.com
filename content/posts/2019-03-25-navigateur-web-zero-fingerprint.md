+++
date        = "2019-03-25"
title       = "Le futur appartient aux navigateurs web « zero fingerprint »"
author      = "Pierre Morsa"
categories  = [ "Nouvelles", "Technomagie" ]
draft       = false
+++
Dans cet article, je voudrais passer un peu de temps pour expliquer pourquoi il est important que les navigateurs web fournissent une « empreinte numérique » identique à tous les sites, pour tous les visiteurs, pour éviter un suivi permanent de vos habitudes sur le web.

## Do Not Track et RGPD ne fonctionnent pas
Safari vient d’abandonner Do Not Track. Le truc qui indiquait aux sites de ne pas vous pister sur le web, mais qu’aucun publicitaire n’a jamais respecté. Demander à un publicitaire de respecter Do Not Track, c’était comme demander à un vendeur de drogue de respecter la loi. Ça n’avait aucune chance de réussir. Do Not Track est non seulement inutile, il est même néfaste, car il ajoute des « bits » d’information permettant de tracer votre empreinte numérique (fingerprinting).

De son côté, le RGPD n’a donné lieu qu’a fait qu’ajouter des clics et une pollution visuelle totalement inutile (qui a déjà refusé de naviguer sur un site à cause de l’avertissement sur les cookies ?) Les sites européens continuent de collecter les données des visiteurs comme si de rien n’était. Le opt out est impossible sur 90 % des sites. Ironiquement, seuls certains sites U.S. semblent s’être réellement mis en conformité, les sites comme Le Monde continuent allègrement de siphonner vos données personnelles pour vous servir de la pub comme en 40. À noter l’attitude particulièrement hypocrite des grands médias qui critiquent Facebook à tout va, mais participent **tous** à son programme de suivi des internautes sur le web (pourquoi croyez-vous qu’il y a le bouton « partager sur Facebook » sur tous leurs sites ?)

## Le fingerprint, la nouvelle technique de pistage
Et puis les cookies, c’est dépassé. Parmi les outils développés ces dernières années, il y a la technique du « fingerprinting » qui consiste à collecter les paramètres uniques d’un navigateur pour identifier un internaute. Ces informations sont par exemple la liste des polices installées, la résolution de l’écran, le type de machine, etc. C’est assez surprenant au début, mais il est possible de constituer une liste de caractéristiques permettant d’identifier chaque visiteur de manière unique.

C’est pour combattre cela que l’idéal serait que tous les navigateurs fournissent une empreinte identique à tous les sites que vous visitez, pour éviter de faciliter le pistage des internautes par les publicitaires. 

C’est possible. La preuve ? Aujourd’hui Apple a fait le choix de communiquer des valeurs « bidon » pour certaines de ces informations (par exemple la liste des polices et la liste des extensions). Si ces informations étaient si cruciales, ça aurait pété le web. Or le web continue de fonctionner.

## Aller vers des navigateurs zero fingerprint
Il faut désormais aller plus loin et faire en sorte que le web utilise un modèle « zero fingerprint ». Outre les exemples déjà évoqués ci-dessus, le navigateur ne donnerait plus d’informations sur la résolution de l’écran, WebGL, etc. Sachant que dans 99,99 % des cas ces informations ne sont utilisées que pour le pistage, les seules choses que cela casserait ne sont que les choses néfastes.

Je ne peux qu’espérer que Gecko et Webkit, en particulier, vont pousser de plus en plus vers ce modèle « zero fingerprint ». Pour Mozilla c’est même, à long terme, une question de survie. C’est l’élément différenciateur, la magie de son produit. Si Microsoft voulait faire un choix stratégique pertinent, ils devraient soutenir pleinement Mozilla plutôt que d’adopter Chromium.
