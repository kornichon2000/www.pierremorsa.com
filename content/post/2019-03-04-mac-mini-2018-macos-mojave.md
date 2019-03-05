+++
date        = "2019-03-04"
title       = "Mac Mini 2018 et macOS Mojave"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
draft       = false
+++

Début de cette année j’ai fait l’acquisition d’un Mac Mini qui fonctionne sous Mojave. C’était donc le moment de passer à la dernière version du système d’exploitation d’Apple. Voici quelques observations en vrac. Ce n’est pas vraiment un test, plutôt le retour d’expérience d’un vieux Mac User.

## Pourquoi un Mac Mini ?
Cela faisait maintenant pratiquement quinze ans que je n’utilisais plus que des portables. Mon dernier Mac fixe était un G4 Cube, c’est vous dire. Ma dernière machine était un MacBook Pro Retina 15" haut de gamme de 2015. Cette machine me donne encore entière satisfaction en termes de puissance, mais elle a un problème de batterie et je vais donc devoir m’en séparer pendant un petit bout de temps. Impossible pour moi de rester sans Mac performant pendant plusieurs jours. J’ai considéré l’achat d’un autre portable 15", mais le prix m’a rebuté. J’ai donc choisi une autre approche : acheter un Mac Mini pour en faire ma machine principale, et garder le MacBook Pro pour mes déplacements (pas un iPad car celui-ci ne correspond pas à ma façon de travailler). Et si le MacBook Pro 15" meurt, tant pis, je rachèterai un Mac portable pas cher style Air bas de gamme pour le remplacer. Si cela devait arriver, le coût d’achat du Mini + portable pas cher reviendrait au même que le prix d’un portable 15". De plus, le Mini dispose de performances supérieures au MacBook Pro (sauf pour la carte graphique).

Sur base de cette logique, je vais donc sur l’Apple Store pour commander un Mac Mini.

## Le prix de base est OK, celui des options est scandaleux
J’ai payé un peu moins de 1500 € pour un core i5, 8 Go de RAM et 512 Go de SSD. Pour moi ce prix serait idéal si la machine avait 16 Go de RAM au lieu de 8 Go. Mais ce n’est pas le cas, je considère donc qu’il est un peu trop cher, mais cela reste acceptable. C’est un des rares Mac actuels à avoir un rapport performances/prix acceptable.

Sauf que. Le prix des options RAM et SSD est à la limite de l’arnaque.

Une des choses que j’avais le plus appréciée à la fin de l’ère Jobs, c’était qu’Apple avait commencé à faire un effort sur le prix des upgrades. D’après mes souvenirs pas toujours très fiables, ça restait cher, mais pas scandaleusement cher comme c’est le cas aujourd’hui. Le prix délirant des options pour la RAM et le SSD est pour moi **le** point négatif du nouveau Mac Mini.

Si 8 Go de RAM peuvent suffire à de nombreuses personnes, la configuration avec le SSD de 128 Go est un danger sanitaire pour l’humanité et ne devrait simplement pas exister en 2019.

## Le déballage du Mac est sympa mais ne m’émerveille plus
Lorsque j’ai fait l’acquisition de mon premier Mac sous Intel, j’avais été frappé par l’attention portée à l’emballage. Aujourd’hui cette attention est toujours là, mais je m’y suis habitué. J’ai ouvert la boîte, sorti le Mac Mini, et voilà. La boîte elle-même n’est vraiment pas grande, elle a même l’air plus petite que la boîte d’un MacBook. Le fait qu’il n’y ait presque rien dans la boîte, juste le Mac Mini et le cordon d’alimentation, n’aide pas vraiment à faire rêver.

L’emballage des adaptateurs Thunderbolt 3 vers Thunderbolt 2 est lui certes sympa, mais franchement, je préférerais de loin avoir des adaptateurs moins chers mais emballés sous blister.

## Quatre ports Thunderbolt, deux USB, un Ethernet, c’est parfait
Un port Ethernet, bordel. Ça change la vie. Plus besoin de dock Thunderbolt ou d’adaptateur supplémentaire pour ce port coûtant quelques Euros (en étant très généreux). Mon écran étant un des rares modèles Thunderbolt 2 du marché, je n’ai pas besoin du port HDMI. Pour le reste, je trouve qu’Apple a mis le bon nombre de ports Thunderbolt et USB.

## Silencieux
Avec le core i5, le Mini ne fait pratiquement aucun bruit, sauf lors de tâches très lourdes comme de l’encodage, lorsque le ventilateur se met en route. Il est en moyenne bien moins bruyant que mon MacBook Pro Retina 2015, dont les ventilateurs se mettent en route à la moindre excuse.

## La carte graphique ne me manque pas pour l’instant
Venant d’un laptop Apple avec carte graphique Radeon, je me demandais si je n’allais pas avoir besoin d’une carte graphique externe. Mais franchement non. Les seules applis qui pourraient en avoir besoin sont Final Cut Pro et Motion, mais pour l’instant je n’ai pas ressenti le besoin d’investir dans une carte externe.

## 8 Go, c’est suffisant pour beaucoup de monde
C’est plus que suffisant pour faire les tâches courantes. Pas besoin de plus pour surfer, faire du mail ou du Microsoft Office. Par contre dans mon cas le Mac n’est pas très content lorsque j’ouvre la machine virtuelle Ouindoze sous Parallels. Là, le manque de mémoire se fait sentir. Mais bon, j’ai quand même acheté 32 Go auprès d’un revendeur tiers, et ce pour à peine plus cher que 8 Go supplémentaires chez Apple. 

L’installation des barrettes devrait être hyper simple, et pourtant elle est incroyablement compliquée, puisqu’il faut démonter entièrement le Mac Mini pour y accéder et extraire la carte mère du boîtier. Il est évident qu’Apple a tout fait pour décourager les gens normaux de réaliser cette opération. Si vous voulez vous lancer dans l’opération, je vous recommande le [tutoriel de iFixIt](https://www.ifixit.com/Device/Mac_mini_Late_2018) (en anglais). Je ne donne pas de lien vers un site marchand, mais pour vous simplifier la vie sachez que le kit nommé « iFixit Essential Electronics Toolkit » référence IF145-348-2 contient tous les outils nécessaires pour réaliser l’opération sans casse.

## L’assistant de migration est génial
Je ne le redirai jamais assez. Un des trucs les plus géniaux sur macOS est un truc qui ne sert qu’une fois dans la vie d’un Mac. C’est l’assistant de migration. Il permet d’importer en quelques clics les données de l’ancien Mac vers le nouveau. Il faut avoir connu la méthode à l’ancienne pour comprendre à quel point c’est génial. Les données personnelles, les configurations, les applications, les champignons, tout est installé comme par magie sur le nouveau Mac.

La méthode que je vous recommande si possible, car de loin la plus rapide, est de mettre l’ancien Mac en mode « Target » (cible) et de connecter les deux Macs avec un câble Thunderbolt. Dans mon cas, j’ai mis le MacBook Pro 2015 en mode « Target », je lui ai connecté un câble Thunderbolt 2 que j’ai relié au Mac Mini avec un adaptateur Thunderbolt 3 vers Thunderbolt 2 (bonjour la facture de câbles). En comparaison la méthode « restauration depuis une sauvegarde Time Machine » est infiniment plus lente.

Le seul truc qui ne marche pas automatiquement, c’est la migration des licences de certaines applications entre l’ancienne machine et la nouvelle. Il faut donc réactiver ces logiciels un par un, et parfois ça coince. Par exemple, S-Gear, un programme de simulation d’ampli de guitare, est bloqué parce que j’ai déjà migré d’une machine précédente (et donc épuisé les deux machines maximum sur lesquelles il peut être activé). Et pour l’instant j’ai la flemme de trouver une solution, alors j’utilise un programme concurrent. Na.

## Le mode sombre, c’est cool
Ah oui, c’est bizarre. En 1984 je ne rêvais que du Mac et de son écran avec des caractères noirs sur fond blanc (un peu bleuté et dans un écran minuscule). Et honnêtement cela reste plus lisible que les caractères blancs sur fond noir. Mais je m’en fiche. Le mode sombre c’est trop cool. Ça me rappelle l’Apple// (même si les caractères ne sont pas verts).

## Certaines applications n’aiment pas le mode sombre
C’était inévitable, certaines applications ne fonctionnent pas correctement avec le mode sombre. Heureusement, il existe un moyen pour forcer uniquement certaines applications à utiliser le mode clair, et garder le reste de l’OS en mode sombre.

Imaginons que vous vouliez garder le mode clair pour Mail. Ouvrez une fenêtre du Terminal et tapez la commande suivante :

```
osascript -e 'id of app "Mail"'
```

Cela devrait vous donner l’ID de l’application Mail, dans ce cas com.apple.mail — ensuite avec cet ID utilisez la commande suivante :

```
defaults write com.apple.mail NSRequiresAquaSystemAppearance -bool yes
```

Quittez et relancez Mail. Normalement si tout s’est bien passé il devrait utiliser le mode clair même si tout le reste de macOS est en mode sombre.

Pour retrouver l’aspect par défaut, utilisez la commande suivante :

```
defaults delete com.apple.mail NSRequiresAquaSystemAppearance
```

## Il faut cliquer des milliers de fois sur les dialogues de sécurité
J’avais été prévenu par les différents articles que j’avais lus sur Mojave : au début on est bombardé de messages demandant de valider les autorisations d’accès des applications. C’est malheureusement le prix à payer pour améliorer la sécurité du Mac.

## J’ai dû mettre à jour quelques apps
Je ne mentionne ici que les apps pour lesquelles j’ai dû acheter une nouvelle version. D’autres apps ont dû être mises à jour, comme Softraid ou Sound Control, mais je n’ai pas dû repasser à la caisse.

* Espresso, l’éditeur de sites web que j’utilise. Cela faisait presque dix ans que j’utilisais la version 1 d’Espresso. J’avais vu que Macrabbit l’avait abandonné l’année dernière. Je m’attendais donc à devoir passer à un autre éditeur. Mais pour mon plus grand bonheur, j’ai découvert qu’un autre développeur avait repris le flambeau. J’ai donc acheté la version 5 d’Espresso, qui fonctionne très bien pour mes besoins assez limités.
* Antidote a dû aussi être mis à jour. La version 9 était une plaie sur macOS Mojave, demandant des autorisations pour tout, et ne fonctionnant que partiellement.

À ma grande surprise, je n’ai pas dû raquer pour Parallels, un grand habitué du « paye à chaque nouvelle version de macOS ». Dans l’ensemble, je suis plutôt positivement surpris du faible nombre d’incompatibilités entre mes apps et Mojave.

## L’animation « cube » a disparu lors de la transition entre deux utilisateurs
Franchement, elle était cool dans les années 2000, mais aujourd’hui elle ne fait que ralentir les choses. C’est d’ailleurs un phénomène systématique dans les interfaces :

* Une nouvelle technologie ou un accroissement de la puissance des machines donne l’idée aux développeurs d’ajouter des effets visuels en plus à l’interface : ombres, transparence, animations, etc.
* La technologie devient répandue et les utilisateurs se lassent des nouveaux effets visuels.
* Les développeurs retirent les effets, ou les réduisent fortement, car en réalité ils ne font que dégrader le niveau d’ergonomie du système d’exploitation.

J’aimerais par exemple que l’app de Slack arrête d’utiliser des animations à la con pour chaque redimensionnement de fenêtre. Ces animations sont tellement lentes qu’elles posent des problèmes pour la manipulation des fenêtres avec AppleScript. Je pense que c’est un problème lié à Electron/Chromium (mais je ne suis pas sûr).

Mise à jour du 2019-03-05 16h23 : Guillaume Gète m’a fait remarquer que la transition cube est toujours là. La raison pour laquelle elle ne s’affichait plus chez moi est assez obscure, mais semble liée au fait que la migration ait engendré une différence de réglage écran différent entre les deux comptes utilisateurs (résolution, couleur ou autre, je ne sais pas). Du coup après avoir fait les tests, la transition cube est de retour chez moi, et je n’ai toujours pas trouvé de moyen fiable pour m’en débarrasser.

## Les polices ont l’air vraiment nazes
Dans certains programmes, pas tous, l’affichage des polices est vraiment atroce (mon écran n’est pas Retina).

Mise à jour du 2019-03-04 17h18 : Pierre Dandumont a un truc pour rétablir l'affichage des polices tel qu'il était avant Mojave, à découvrir [sur son blog le journal du lapin](https://www.journaldulapin.com/2018/10/02/mojave-rendu-police/)

## Il y a un bug pourri entre les claviers et FileVault
C’est assez bizarre, mais FileVault désactive certains claviers externes. C’est peut-être une mesure de sécurité, mais c’est particulièrement pénible. Pour l’instant, je n’ai aucune solution et j’ai dû désactiver FileVault sur le Mac Mini. Heureusement, c’est une machine fixe, donc moins exposée au vol, mais j’espère qu’Apple corrigera le tir dans de futures versions de Mojave.

Si jamais votre souris ou votre clavier sont désactivés au démarrage et que vous ne pouvez pas rentrer votre mot de passe, et que vous venez d’activer FileVault, ce bug en est probablement la raison. Dans ce cas il faut soit :

* utiliser un autre clavier pour entrer le mot de passe au démarrage
* ou attendre / essayer de redémarrer (je n’ai pas compris la séquence exacte à suivre) et macOS vous proposera de démarrer dans un mode spécial permettant de désactiver FileVault si vous en connaissez le mot de passe.

## AppleScript survit, mais pour combien de temps ?
AppleScript et l’automatisation telle que nous l’avons connue pendant des années sur Mac semblent vraiment sur la fin. Apple ne corrige plus les bugs AppleScript connus depuis des années, ses propres applications ne supportent plus le langage, et les restrictions de sécurité mises en place par Mojave ne font que compliquer les choses. On sent bien qu’Apple a envie de tuer AppleScript, mais n’a pas encore osé franchir le pas.

## En conclusion
À prix équivalent un ordinateur fixe comme le Mac Mini offre de bien meilleures performances que le plus rapide des MacBook Pro (excepté carte graphique). De plus, il y a bien moins de pièces sujettes au vieillissement, comme le clavier, le trackpad, la batterie ou même l’écran. Donc il y a, en théorie, moins de risques de pannes. Pour l’instant je suis très satisfait de mon nouveau Mac Mini. On verra s’il mettra fin à ma série de machines à problème de ces dernières années (MacBook Pro 17" 2009 vitre de l’écran qui se décolle, MacBook Pro Retina 2013 carte mère grillée, MacBook Pro Retina 2015 batterie qui gonfle et touche caps lock qui se déloge).
