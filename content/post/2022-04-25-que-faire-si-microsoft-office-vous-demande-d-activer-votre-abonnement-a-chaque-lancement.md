+++
draft       = false
date        = "2022-04-25"
title       = "Que faire si Microsoft Office vous demande d’activer votre abonnement à chaque lancement ?"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
+++

Récemment j’ai été confronté au problème suivant : Microsoft PowerPoint me demande d’activer mon abonnement Office 365 à chaque lancement de l’application. Outre le côté pénible de devoir entrer mon mot de passe à chaque lancement, l’application reste bloquée en mode « secure input », ce qui empêche l’exécution de macros.

Impossible de corriger le problème en supprimant les caches, l’authentification du trousseau et ce genre de choses rigolotes. Finalement, à force de chercher j’ai trouvé cet outil : [Microsoft License Removal Tool](https://support.microsoft.com/en-us/office/how-to-remove-office-license-files-on-a-mac-b032c0f6-a431-4dad-83a9-6b727c03b193)

J’ai quitté toutes les applications Office, y compris le célèbre pare-feu. Puis j’ai téléchargé et lancé le Microsoft License Removal Tool. Une fois la procédure terminée, j’ai dit « connard de Microchiotte ». J’ai ensuite relancé Microsoft PowerPoint, qui m’a bien entendu demandé mon nom d’utilisateur et mon mot de passe. Mais maintenant, ça marche. Lorsque je quitte et relance PowerPoint, il se souvient de moi et ne me redemande pas sans cesse mon mot de passe.

Je ne sais pas si c’est l’utilisation du Microsoft License Removal Tool ou le fait d’avoir dit « connard de Microchiotte » qui a résolu mon problème. Mais par sécurité je répète « connard de Microchiotte » toutes les 15 minutes. Pour l’instant ça marche.
