+++
date        = "2018-11-26"
title       = "Supprimer des fichiers en masse dans Slack"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
draft       = false
+++
# Supprimer des fichiers en masse dans Slack
J'ai un ami qui utilise la version gratuite de Slack pour sa startup. En discutant, il m'a évoqué un problème auquel il faisait face. Il était obligé de supprimer les fichiers un à un lorsqu'il atteignait la limite de place.

Heureusement, comme toujours quelqu'un a inventé une solution. Elle est disponible à l'adresse ci-dessous :

https://bulk-delete-slack-files.herokuapp.com

Mise à jour du 2018-12-07 : le lien vers la page pour générer le « token » (jeton) Slack n'est plus bon. Vous pouvez utiliser ce lien tant qu'il fonctionne encore : https://api.slack.com/custom-integrations/legacy-tokens

Si vous ne faites pas confiance au site, vous pouvez utiliser un script Ruby disponible à l'adresse ci-dessous :

https://gist.github.com/jamescmartinez/909401b19c0f779fc9c1

Si vous regardez dans les commentaires de la page, vous verrez que quelqu'un a également créé une version du script en Python.

Historique :
2018-12-07 : ajout du lien vers la page pour générer le token.