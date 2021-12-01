+++
draft       = false
date        = "2021-12-06"
title       = "Utiliser rclone pour se connecter à Dropbox et OneDrive"
author      = "Pierre Morsa"
categories  = [ ""Technomagie" ]
+++

> Note : cet article fait appel à certaines notions avancées de gestion des fichiers, que je n’explique pas dans cet article. Si vous ne maîtrisez pas les concepts de serveur distant, synchronisation, copie, réplication, je vous déconseille fortement d’utiliser rclone. Je vous conseille aussi de **toujours** tester votre configuration en utilisant l’option --dry-run (test) pour vérifier que le résultat correspond bien à ce que vous attendez.

Je n’aime pas le fonctionnement standard de Dropbox et de OneDrive. Ces solutions synchronisent immédiatement le changement du moindre fichier, et ce dans les deux sens. Si je modifie un fichier sur mon disque local, il est immédiatement envoyé dans le cloud. Si un fichier Dropbox est supprimé sur la machine d’un collaborateur, il disparaît presque instantanément de mon disque dur. Ce fonctionnement est logique et probablement le seul suffisamment intuitif pour la plupart des utilisateurs, mais ce n’est pas le fonctionnement que je souhaite. Je préfère modifier les fichiers localement, sur mon disque, et n’envoyer les modifications dans Dropbox ou OneDrive qu’une fois mes modifications terminées, et ce pour plusieurs raisons :

* Cela réduit les risques de mauvaise manipulation : suppression accidentelle d’un fichier, modification erronée, etc. 
* Cela minimise l’espace de stockage local nécessaire : seuls les fichiers sur lesquels je travaille sont sur mon disque dur. Sur un projet avec des dizaines de gigas de vidéos et d’images, cela fait une vraie différence.
* Cela réduit l’utilisation réseau. Cela ne me sert absolument à rien d’envoyer 20 versions intermédiaires dans le cloud. C’est beaucoup plus économique de n’envoyer que la version finale du document dans le cloud.
* Cela évite que ma version ne soit modifiée par mégarde par un autre utilisateur.

Après avoir cherché, beaucoup, vraiment beaucoup cherché, et après avoir essayé beaucoup, vraiment beaucoup de solutions qui ne fonctionnaient pas très bien, j’ai fini par en trouver une qui est fiable : rclone.

Pourquoi je préfère rclone ? C’est simple :

* Je peux choisir **quand** je veux synchroniser les fichiers. 
* Je peux aussi choisir **quels fichiers** et **quels répertoires** je veux synchroniser et **à quel moment**.
* Je peux chiffrer certains documents lors de la synchronisation, y compris les noms des documents et des répertoires : ces documents sont stockés en clair sur mon disque dur (pratique pour l’indexation et Spotlight) et ne sont chiffrés que pour leur envoi dans le Cloud.

Pourquoi ne pas utiliser rclone ? C’est simple : parce que c’est compliqué. Il m’a fallu lutter pendant plusieurs heures avant d’arriver à une configuration qui fonctionne bien. rclone est aux antipodes de la philosophie initiale de Dropbox : il faut tout installer et paramétrer soi-même et rien n’est configurable via une interface graphique, il faut savoir utiliser le Terminal et la ligne de commande pour utiliser rclone. Si vous ne savez pas ce qu’est le Terminal, alors cette solution n’est définitivement pas pour vous.

## Les limitations de rclone

Avant d’aller plus loin, je préfère vous prévenir de la limitation principale de rclone : il n’y a pas de véritable synchronisation bidirectionnelle ; on peut s’en rapprocher, mais avec quelques limitations. C’est ce que j’explique dans la suite de l’article.

## Sync ou copy, il faut choisir

Avant d’expliquer le fonctionnement de rsync, un petit rappel sur le fonctionnement de Dropbox et OneDrive. Ils utilisent ce qu’on appelle une synchronisation bidirectionnelle ; autrement dit, elle se fait dans les deux sens. Si vous ajoutez un fichier sur votre disque local, il est copié dans le cloud. Si vous ajoutez un fichier dans le cloud, il est copié sur votre disque local. Pareil pour les modifications et suppressions.

```rclone sync``` ne fonctionne pas de cette manière : la synchronisation et la copie sont **unidirectionnels**.

Si vous lancez une synchronisation du répertoire A local vers le répertoire A cloud, rclone va faire en sorte que le répertoire A cloud soit parfaitement identique au répertoire A local. **Tous les fichiers que vous auriez pu ajouter au répertoire A cloud entre deux synchronisations seront perdus, détruits, effacés**. En réalité, ce n’est pas une synchronisation, c’est une copie miroir.

Je ne vais pas rentrer dans plus de détails, mais si vous voulez faire beaucoup de modifications bidirectionnelles, rclone sync devient très difficile à utiliser ; le risque de perdre des fichiers est bien réel. À mon sens, rclone sync ne peut vraiment fonctionner que si on souhaite faire des modifications que dans un seul sens, ou d’une seule machine à la fois.

Pour cette raison, je n’utilise pas rclone sync. Je préfère utiliser rclone copy.

```rclone copy``` est beaucoup plus simple à comprendre. Le fonctionnement est similaire à une copie de fichier du répertoire source vers le répertoire destination : soit du local vers le cloud ou du cloud vers le local.

Dans la suite de ce guide, je n’expliquerai que l’utilisation de ```rclone copy``` avec Dropbox, parce que c’est la seule pour laquelle je dispose d’une expérience significative et aussi parce que j’ai la flemme de tout écrire.

## Configurer rclone pour utiliser Dropbox

> Astuce pour Dropbox Business : si vous utilisez dropbox business, par défaut le chemin d’accès pointe vers votre répertoire privé. Si vous voulez faire pointer le chemin d’accès vers la racine, alors il faut utiliser dropbox:/ avec un slash derrière les :

Je recopie ici [l’exemple donné sur le site de rclone, légèrement mis à jour par mes soins.](https://rclone.org/dropbox/)

lancez la procédure de configuration d’un nouveau service de rclone :

```
rclone config
```

Cela lance la procédure interactive de configuration. Choisissez n pour new remote.

```
e) Edit existing remote
n) New remote
d) Delete remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
e/n/d/r/c/s/q>
```

Donnez-lui un petit nom sympa, comme toto ou remote :

```
Type of storage to configure.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
[plein de trucs que j'ai retirés]
XX / Dropbox
   \ "dropbox"
[d'autres trucs que j'ai retirés]
Storage> dropbox
```

Entrez l’OAuth Client Id si nécessaire (j’ai laissé vide) :

```
** See help for dropbox backend at: https://rclone.org/dropbox/ **

OAuth Client Id
Leave blank normally.
Enter a string value. Press Enter for the default ("").
client_id> 
```

Pareil pour le OAuth Client Secret (je l’ai laissé vide également) :

```
OAuth Client Secret
Leave blank normally.
Enter a string value. Press Enter for the default ("").
client_secret> 
```

Après il me demande si je veux accéder aux options de configuration avancées. Comme je suis paresseux, je réponds non.

```
Edit advanced config? (y/n)
y) Yes
n) No (default)
y/n> n
```

Puis il me demande si je veux utiliser la configuration automatique. Comme je suis paresseux, je réponds oui.

```
Remote config
Use auto config?
 * Say Y if not sure
 * Say N if you are working on a remote or headless machine
y) Yes (default)
n) No
y/n> y
```

Ensuite, vous allez voir ce message s’afficher :

```
If your browser doesn’t open automatically go to the following link: http://127.0.0.1:53682/auth?state=d9iKSUDecisVxNQ1ZH3Nsg
Log in and authorize rclone for access
Waiting for code...
```

Cela va ouvrir une page web :

![Rclone Dropbox Authentication](/pictures/2021/12/rclone.jpg)

Cliquez sur « Allow » (parce que sinon ça marchera moins bien). Rclone va alors récupérer le « token » d’authentification automatiquement. Tapez y pour dire que c’est OK.

> Astuce : si vous avez un problème pour ouvrir la page web, vérifiez que votre navigateur n’essaie pas de s’y connecter en https au lieu de http. Chez moi ça marche dans Safari, mais pas dans le panda roux.

```
Got code
--------------------
[toto]
type = dropbox
token = {"access_token":"sl.A9UQv2wien8nCvqUoXlb4tMSQBz-w0wXJ1lkxQnmjC-PQUtJirhJOAcJm2mhPvzjygjmCn22WQiEH5j-BCkYatfweTn_6j5S8XX_o8nX4CPNoFVkfqTrhUsQpKt9uhL0Vtq1IOW3","token_type":"bearer","refresh_token":"gt4p7RhZDsUAAAAAAAAAARvzuKzwfDtOwQBdOdqB_eU7CDEBJ7m0VHm-b2KV1Qck","expiry":"2021-12-01T14:20:32.178051+01:00"}
--------------------
y) Yes this is OK (default)
e) Edit this remote
d) Delete this remote
y/e/d> 
```

Voilà, rclone est configuré pour se connecter à Dropbox. Si vous revenez au début, tapez q pour quitter la procédure de configuration.

## Copier les fichiers avec rclone copy

Une fois le service cloud configuré, nous pouvons utiliser rclone copy pour copier les fichiers. Les possibilités de configuration sont assez monstrueuses, aussi je ne vais donner que quelques exemples que j’utilise.

Voici un premier exemple qui va copier les fichiers du répertoire Local-Directory vers le répertoire Remote-Directory. Notez l’emploi de l’option --dry-run pour faire un test à blanc, les fichiers ne sont pas réellement copiés.

```
/usr/local/bin/rclone copy --dry-run '/Users/toto/Path/To/Local-Directory/' 'dropbox_safe:/Path/To/Remote-Directory/'
```

Sans l’option --dry-run, les fichiers sont réellement copiés :

```
/usr/local/bin/rclone copy '/Users/toto/Path/To/Local-Directory/' 'dropbox_safe:/Path/To/Remote-Directory/'
```

Il est possible de définir un fichier avec des règles de filtrage pour ne copier que certains fichiers ([c’est expliqué ici sur le site de rclone](https://rclone.org/filtering/)) :

```
/usr/local/bin/rclone copy --dry-run --filter-from '/Users/toto/Documents/rclone/filter.txt' '/Users/toto/Path/To/Local/Directory/' 'dropbox_safe:/Path/To/Remote/Directory/'
```

Voici encore une autre option intéressante : --max-age qui permet de limiter la copie des fichiers aux fichiers modifiés depuis un temps donné. Dans mon exemple, je ne copie que les fichiers modifiés ou ajoutés depuis 48h.

```
/usr/local/bin/rclone copy --dry-run --max-age 48h '/Users/toto/Path/To/Local/Directory/' 'dropbox_safe:/Path/To/Remote/Directory/'
```

Enfin, l’option --progress permet d’afficher dans le terminal la progression de la copie des fichiers.

```
/usr/local/bin/rclone copy --dry-run --progress '/Users/toto/Path/To/Local/Directory/' 'dropbox_safe:/Path/To/Remote/Directory/'
```

Voilà, comme vous pouvez le voir, les options sont trop nombreuses pour tout expliquer ici, cependant, en usage quotidien, une commande pour copier de votre disque local vers Drobpox et une autre pour copier de Dropbox vers votre disque local devrait être bien suffisant. Et comme toujours, pour aller plus vite (je crois que j’ai déjà dit que j’étais paresseux), j’utilise Keyboard Maestro pour tout automatiser.

La page des options de rclone est ici : [rclone flags](https://rclone.org/flags/)

## Monter le service cloud comme un disque

Avec Fuse, rclone permet de monter un service cloud comme étant un disque local. Ironiquement, de toutes les solutions que j’ai testées, c’est la seule qui fonctionne bien, et en plus elle est gratuite.

> Astuce : si vous avez un fichier caché comme .DS_Store dans le répertoire cible, rclone refusera de monter le disque. Utilisez la commande ls -a répertoire pour vérifier s’il n’y a pas de fichiers cachés. 

Pour monter Dropbox comme un disque local, vous pouvez utiliser la commande suivante :

```
mkdir /Users/toto/Dropbox
/usr/local/bin/rclone mount dropbox:/ /Users/toto/Dropbox
```

mkdir va créer le répertoire local qui servira de point de montage pour le disque. Ensuite, j’exécute rclone mount pour monter le disque. Vous n’avez pas besoin d’inclure systématiquement /usr/local/bin, mais je le fais, car si vous en faites une macro Keyboard Maestro, il est nécessaire de préciser le chemin d’accès à rclone.
 
## Chiffrer un répertoire dans le cloud

Le gros avantage de rclone, c’est que le répertoire local n’est pas chiffré ; seuls les fichiers copiés dans le cloud le sont. J’ai donc accès à mes fichiers localement normalement, et ceux-ci sont chiffrés avant d’être envoyés vers le Claude. C’est une des raisons pour laquelle j’utilise rsync plutôt que le client officiel Dropbox : cela ajoute une bonne couche de sécurité supplémentaire aux fichiers client sensibles.

Je ne vais pas détailler la procédure ici, mais [elle est expliquée ici sur le site de rclone](https://rclone.org/crypt/).

## Conclusion

Ça a l’air compliqué, et ça l’est, mais une fois tout configuré et automatisé grâce à Keyboard Maestro, c’est finalement très simple. rclone m’a libéré du boulet des clients Dropbox et OneDrive, alors rien que pour ça, je dis merci aux développeurs.