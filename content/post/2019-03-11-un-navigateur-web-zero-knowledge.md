2019-03-11 Un navigateur Zero Knowledge
# Le court destin de Do Not Track

Safari vient d'abandonner Do Not Track. Le truc qui indiquait aux sites de ne pas vous pister sur le web, mais qu'aucun publicitaire n'a jamais respecté. Do Not Track est non seulement inutile, il est même néfaste, car il ajoute des "bits" d'information permettant de tracer votre empreinte numérique (fingerprinting).

L'idéal serait que le futur du Web apporte un modèle « Zero Knowledge » (zéro connaissance), où des informations comme la lise des polices, le navigateur utilisé, la résolution de l'écran ou la liste des extensions installées ne serait pas communiquée aux serveurs. C'est tout à fait possible, et pour 99,99% des sites ces informations ne sont pas nécessaires dès lors qu'ils sont développés en respectant les standards du Web, supportés par tous les moteurs de rendus du marché, dont Webkit, Gecko et Chromium. 

La preuve ? Aujourd'hui Apple a fait le choix de communiquer des valeurs « bidon » pour certaines de ces informations (par exemple la liste des polices et la liste des extensions). Si ces informations étaient si cruciales, ça aurait pété le web.

Dans un modèle « Zero Knowledge », c'est au développeur Web de s'assurer de respecter les standards qui garantissent un fonctionnement correct du site sur tous les navigateurs. Oui, ça va en choquer certains mais coder juste pour son navigateur préféré n'est pas une bonne pratique. Le développeur peut demander d'utiliser certaines fonctionnalités qui peuvent ne pas être présentes sur la machine, par exemple une extension ou une police de caractères, mais si elle n'est pas disponible le site doit continuer de fonctionner correctement. Dans ce modèle, pas besoin de savoir si le navigateur est Safari, Chrome, Opera, Firefox ou autre. Le serveur envoie ses données, le navigateur s'occupe du reste, et ne renvoie que ce qui est indispensable. À la limite, la seule information qui doit être communiquée est la version des standards acceptée par le navigateur, par exemple HTML 5.

Je ne peux qu'espérer que Gecko et Webkit, en particulier, vont pousser de plus en plus vers ce modèle « Zero Knowledge ». Pour Mozilla c'est même, à long terme, une question de survie. C'est l'élément différenciateur, la magie de son produit. Je répète, si Microsoft voulait faire un choix stratégique pertinent, ils devraient soutenir pleinement Mozilla plutôt que d'adopter Chromium.

Il faut bien avouer que la directive européenne sur les Cookies n'a donné lieu qu'à une pollution visuelle totalement inutile. Le RGPD n'a strictement rien changé. Ironiquement, seuls certains sites U.S. semblent s'être réellement mis en conformité, des sites comme Le Monde continuent allègrement de continuer à collecter vos données personnelles pour vous servir de la pub comme en 40.

