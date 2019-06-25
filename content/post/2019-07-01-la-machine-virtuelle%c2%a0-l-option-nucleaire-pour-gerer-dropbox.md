+++
date        = "2019-07-01"
title       = "La machine virtuelle : l’option nucléaire pour gérer Dropbox"
author      = "Pierre Morsa"
categories  = [ "Lifehacks", "Technomagie" ]
draft       = false
+++
Comme vous le savez peut-être, en plus d’avoir pris un sacré embonpoint avec la dernière version, Dropbox a une fâcheuse tendance à garder les droits administrateur sur votre Mac pour pouvoir se mettre à jour tout seul (en tout cas, c’est la raison officielle invoquée). Si vous regardez toutes vos applications en dehors de celles du Mac App Store, vous verrez que c’est la seule qui se met à jour toute seule sans demander de mot de passe, comme par magie. Ce comportement problématique a déjà été remonté à de nombreuses reprises à Dropbox, mais visiblement ils n’ont pas l’intention de le changer.

Pour parer à ce problème, une solution est d’isoler Dropbox sur une machine séparée, Mac ou PC, et d’accéder à cette machine via le réseau. Une autre option est d’utiliser une machine virtuelle. C’est ce que j’ai fait. 

J’ai installé Dropbox sur une machine virtuelle Windows (quitte à mettre la crasse quelque part, autant le mettre là où c’est déjà de la crasse). Du coup, Dropbox est complètement isolé du reste du Mac, et ne peut pas interférer avec celui-ci. La machine virtuelle fonctionne sous Parallels, je peux donc facilement accéder aux documents Dropbox via la fonction de partage de fichiers.

Évidemment, c’est moins pratique que de simplement mettre Dropbox sur votre machine. Mais cela évite que Dropbox ne s’arroge les droits administrateur sur votre machine sans votre consentement.