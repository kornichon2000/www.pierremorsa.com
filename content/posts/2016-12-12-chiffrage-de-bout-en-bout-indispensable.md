+++
title      = "Pourquoi le chiffrage de bout en bout est indispensable"
author     = "Pierre Morsa"
date       = "2016-12-12"
categories = [ "Technomagie" ]
draft      = false
+++

**Avertissement : la sécurité informatique est un sujet très complexe et difficile à mettre en œuvre. Je ne suis moi-même pas un expert en sécurité, mais je base cet article sur ce que j'ai pu lire sur différents sites. Mais à vous de vous documenter plus si vous souhaitez vérifier la sécurité des applications listées ci-dessous.**

Saviez-vous que chaque email que vous envoyez peut être très facilement lu par des personnes mal intentionnées ? Non seulement les emails ne sont pas chiffrés sur votre machine, mais ils ne sont pas chiffrés non plus sur les serveurs distants. Pire, ils ne sont pas chiffrés non plus pendant le transfert de votre machine à celle de votre correspondant ! L'email standard est le niveau 0 de la sécurité : il n'y a aucun chiffrage, que ce soit au niveau du stockage ou au niveau du transport ! Concrètement cela signifie que n'importe quelle agence à trois lettres qui souhaite lire vos emails peut le faire très facilement. C'est d'ailleurs assez ironique de voir à quel point les grandes entreprises si jalouses de leurs secrets n'hésitent pas à utiliser l'email pour envoyer des documents confidentiels.

Évidemment la parade à cela, c'est le chiffrage. Le problème c'est que le chiffrage, c'est loin d'être simple. Autant pour des raisons mathématiques que techniques et surtout politiques.

## Le chiffrage et la sécurité nationale
Les solutions de chiffrage efficaces sont souvent présentées comme des armes pour les terroristes, les pédophiles et autres êtres malfaisants. On arrête l'hypocrisie. La France et bien d'autres pays n'ont aucun remords à vendre des armes bien réelles et des systèmes de surveillance électronique à des dictatures. Comble de l'ironie, ces superbes deals sont protégés par l'excuse du secret défense ! Il faut voir aussi à quel point nos démocraties sont promptes à condamner le Great Firewall of China alors qu'elles-mêmes bloquent de plus en plus facilement ce qu'elles considèrent comme contraire à leurs intérêts. Alors bien sûr que les sites qui font l'apologie du terrorisme ne sont pas acceptables, mais sans cadre légal démocratique strict la dérive totalitaire est très facile.

La réalité c'est que sur le point de la surveillance nos pays sont bien mieux équipés que la plupart des dictatures. Dans un réflexe spontané d'auto-préservation les États démocratiques font tout pour surveiller les individus au détriment du respect de leurs libertés et de leur vie privée et sans aucune réflexion sur les dégâts potentiels à long terme.

##  Le chiffrage des transmissions de données ce n'est pas le vrai chiffrage !
Lorsque vous voyez l'icône du cadenas dans votre navigateur web vous pouvez vous croire protégé. Faux. Archi-faux. Ce qui est chiffré c'est uniquement la transmission des données entre votre machine et le serveur situé quelque part ailleurs sur terre.  Toute personne qui a accès à votre machine ou la machine à distance pourra accéder à vos données. Quelques exemples de services qui ne chiffrent que la transmission des données ? Voilà :

* gmail
* Dropbox
* OneDrive
* iCloud
* Hotmail
* Slack
* Facebook

Je continue ? 99,99% des services internet ne chiffrent nos données que durant la transmission. Par exemple une personne mal intentionnée qui accède à la machine sur laquelle sont stockées vos fichiers Dropbox peut les lire sans aucune difficulté. Certaines données, comme le mot de passe, sont souvent chiffrées, c'est vrai (avec différentes méthodes comme le hash et le salt trop longues à décrire ici), mais toutes les autres données sont stockées sans aucun chiffrage.

## Le chiffrage de bout en bout, seule véritable solution sécurisée
Pour avoir des données réellement sécurisées, il faut utiliser ce qu'on appelle le chiffrage de bout en bout. Les données sont chiffrées partout. Seul le propriétaire, et éventuellement le destinataire, doivent pouvoir lire les données. De plus il faut que la mise en œuvre du chiffrage soit : 

* fiable, ce qui est très difficile à faire (par exemple la NSA a poussé à l'adoption de certains algorithmes de chiffrage comportant des faiblesses qui rendent le déchiffrage beaucoup plus facile),
* auditable pour vérifier qu'elle ne comporte pas de « porte dérobée » (par exemple via un mot de passe secret qui permettrait à une agence de renseignement d'accéder à vos données), 
* chiffre également ce qu'on appelle les méta-data ou du moins en minimise l'empreinte. Un exemple de méta-data c'est la liste des appels que vous avez passé depuis votre téléphone ; ce sont des données supplémentaires qui sont nécessaires pour transmettre les données principales, mais qui peuvent être utilisées contre vous.

La liste de services internet qui respectent ces critères pour le chiffrement de bout en bout est incroyablement courte. Pour plusieurs raisons. Premièrement, comme déjà évoqué, c'est très difficile à mettre en œuvre correctement et cela demande un niveau de compétences spécifiques très élevé. Deuxièmement les agences de surveillance font tout pour empêcher le développement de ces solutions. Voici néanmoins une liste de solutions qui, au mieux de mes connaissances, utilisent le chiffrage de bout en bout.

## Email: Protonmail
**[Protonmail](https://www.protonmail.com).**

Protonmail est un service d'email sécurisé basé en Suisse. Attention, il ne fonctionnera de manière sécurisée que lorsque les emails sont échangées entre adresses @protonmail.com - si vous envoyez un email à une autre adresse, par exemple @gmail.com, cet email ne sera pas chiffré. C'est une limitation impossible à contourner à cause du fonctionnement non chiffré des messageries email classiques. Le service fonctionne bien, mais par contre il possède plusieurs faiblesses potentielles. La première est l'utilisation de JavaScript dans le navigateur pour assurer le chiffrage qui ne permet pas de garantir une sécurité à 100% (compromission des serveurs de Protonmail, man in the middle attack). L'utilisation de l'App iOS ou Android permet de résoudre ce problème. La deuxième est que vos clés de chiffrement sont stockées sur leurs serveurs. Néanmoins Protonmail semble un excellent compromis entre sécurité et facilité d'utilisation.

À noter que pour freiner l'adoption de Protonmail celui-ci a mystérieusement disparu des résultats de recherche de Google pendant plusieurs mois. Google n'a jamais fourni d'explication, mais on peut penser que la concurrence que Protonmail représente pour gmail n'y est pas étrangère.

## Messagerie instantanée : Signal
[Signal](https://whispersystems.org/#page-top)

Signal est à l'heure actuelle une des seules messageries instantanées qui supporte le chiffrage de bout en bout de manière suffisamment fiable et auditée.

Oubliez WhatsApp ou Skype. WhatsApp a été racheté par Facebook. Microsoft a modifié l'architecture de Skype pour permettre à la NSA d'écouter toutes les conversations.

## GTD : Omnifocus
[Omnifocus](https://www.omnigroup.com/omnifocus/)

Omnifocus 2 utilise les serveurs de Omni Group pour la synchronisation entre appareils et supporte le chiffrage de sa base de données de bout en bout. Le chiffrage a lieu *avant* que les données ne quittent vos appareils. Cela signifie que les données stockées sur les serveurs de Omni Group sont illisibles pour toutes les personnes qui ne disposent pas du mot de passe ; même les employés de Omni Group ne peuvent y accéder.

C'est un excellent pas dans la bonne direction, même si comme souvent il est impossible d'être certain qu'aucune porte dérobée n'existe.

## Disque Dur : TrueCrypt ou VeraCrypt (Avertissement !)
[TrueCrypt](https://www.grc.com/misc/truecrypt/truecrypt.htm)
[VeraCrypt](https://veracrypt.codeplex.com)

Vous pouvez utiliser TrueCrypt version 7.1a (la dernière vraie version de TrueCrypt, les versions plus récentes n'étant pas fiables). Mais attention, le projet n'est plus maintenu, après l'abandon brutal du projet par l'équipe de développement. 

Vous pouvez également vous tourner vers son successeur, VeraCrypt. Même si ces solutions ne sont pas parfaites, ce sont celles qui ont le moins de risques de comporter une porte dérobée cachée.

Pour chiffrer le contenu de votre disque dur, vous pouvez faire confiance aux solutions standard fournies par Apple (FileVault) ou Microsoft (Bitlocker). Mais il faut savoir que [Microsoft a laissé échapper par mégarde la clé de la porte dérobée pour accéder au contenu des disques lors du Secure Boot...](http://arstechnica.com/security/2016/08/microsoft-secure-boot-firmware-snafu-leaks-golden-key/). À l'heure actuelle aucun élément ne permet d'incriminer Apple, mais rien ne permet de garantir que FileVault ne comporte pas une porte dérobée. Par simplicité FileVault est la solution que j'utilise pour protéger mes données en cas de vol.

## En conclusion...
Je veux encore rappeler que je ne suis pas un expert de la sécurité et que de nos jours en termes de sécurité on ne peut être sûr de rien. Adopter ces solutions chiffrées de bout en bout, c'est bien, mais vous allez vite vous rendre compte de la limite principale : l'humain. 90% des utilisateurs se fichent de la sécurité de leurs données et ne voudront pas utiliser Protonmail ou Signal. Tant pis pour eux. Je suis personnellement convaincu que ces solutions doivent être supportées activement pour permettre leur développement et leur adoption par un nombre croissant d'utilisateurs.
