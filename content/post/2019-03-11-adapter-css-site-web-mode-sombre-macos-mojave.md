+++
date        = "2019-03-11"
title       = "Adapter le CSS d'un site web pour le mode sombre de macOS Mojave"
author      = "Pierre Morsa"
categories  = [ "Technomagie" ]
draft       = false
+++
Mojave a introduit la fonctionnalité la plus utile de tous les temps : le mode sombre, qui utilise une magnifique couleur gris sombre pour les éléments de l’interface plutôt qu’une couleur claire.

Mojave 10.14.4 (pas encore sorti à l’heure où j’écris ces lignes) supportera automatiquement le mode sombre pour l’affichage des sites web qui ont été adaptés. Mojave 10.14.3 et les versions antérieures ne le supportent pas encore, mais vous pouvez tester le passage automatique au mode sombre en téléchargeant la [Safari Technology Preview](https://developer.apple.com/safari/download/).

Étant fan du mode sombre, il fallait évidemment que j’adapte mon blog, et c’est désormais chose faite. 

[J’ai trouvé l’explication originale sur le blog de Kevin Chen](https://kevinchen.co/blog/support-macos-mojave-dark-mode-on-websites/). Pour cela, j’ai ajouté les lignes suivantes à mon CSS :

```
@media (prefers-color-scheme: dark) {
    /* Overrides for Dark Mode. */
    body {
        color: white;
        background: #222;
    }
	
	#header {
		background: #222;
	}

	.post {
		background: #222;
	}
	
	h1, h2, h3, h4 {
	    color: #bbb;
	}
	
	button,
	.button {
		color: #bbb !important;
		box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.5);
	}
	
	
	button.disabled,
	button:disabled,
	.button.disabled,
	.button:disabled {
		box-shadow: inset 0 0 0 1px rgba(150, 150, 150, 0.5);
	}
	
}
```

Il faut ajouter un media query @media (prefers-color-scheme : dark) et y ajouter les paramètres spécifiques au mode sombre. Dans mon cas, la couleur des polices, du fond et des bordures. Mon blog étant assez simple, l’adaptation a été très rapide.