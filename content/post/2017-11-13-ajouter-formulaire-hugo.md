+++
title      = "Ajouter un formulaire de contact dans Hugo"
author     = "Pierre Morsa"
date       = "2017-11-13"
categories = [ "Technomagie", "Hugo" ]
draft      = false
+++

Vous trouverez dans cet article une procédure pas à pas pour ajouter un formulaire de contact dans un site statique Hugo, sans avoir besoin de back-end car nous allons déléguer le traitement des données à Zapier.

J'ai déjà parlé de [Hugo](http://gohugo.io), le générateur de sites statiques que j'utilise pour mon blog et le site de ma société. Les sites générés étant statiques, il n'y a pas de base de données ou de scripts serveurs pour gérer un formulaire de contact. Il faut donc trouver une solution alternative. En voici une possible, mais ce n'est pas la seule.

## Ce dont vous allez avoir besoin

* Bootstrap, ou au minimum la librairie de validation de formulaire ; le thème utilisé était basé sur [Bootstrap](http://getbootstrap.com), une librairie qui permet de créer des sites web plus facilement. Si votre thème n'utilise pas Bootstrap, il faudra peut-être bidouiller un peu plus.
* Un compte [Zapier](https://zapier.com) pour créer le Web Hook auquel sera envoyé les données du formulaire
* Un compte [Slack](https://slack.com/) pour pouvoir poster les données du formulaire ; à noter que le gros avantage d'utiliser Zapier est de pouvoir rediriger le contenu du formulaire vers pratiquement n'importe quel support : email, Slack, Google Sheets, Office 365, etc.  
* Un peu de JavaScript (eh oui on ne peut pas toujours s'en passer malheureusement)

## Étape 1 : créez un WebHook sur Zapier
Commencez par créer un compte [Zapier](https://www.zapier.com/) si vous n'en avez pas encore ; la bonne nouvelle, c'est que c'est gratuit tant que vous n'utilisez pas trop le service.

Cliquez sur le bouton Make a Zap!

![Make a Zap!](/pictures/2017/11/makeazap.jpg)

Dans « Built-in Apps » choisissez « Webhooks ».

![Zapier Webhook](/pictures/2017/11/zapier-webhook.jpg)

Choisissez le type « Catch Hook ».

![Zapier catch hook](/pictures/2017/11/zapier-catch-hook.jpg)

Passez l'étape optionnelle « Pick off a child key ».

L'étape suivante, « Test Webhooks by Zapier » est importante car elle vous donne l'URL de votre Webhook.  **Copiez l'adresse du webhook quelque part** car nous allons en avoir besoin lorsque nous créerons le formulaire.

Notez que pour l'instant vous n'avez encore jamais envoyé de données au Webhook, par conséquent le test ne marchera pas. Gardez la page web de Zapier ouverte, nous y reviendrons plus tard.

## Étape 2 : créez un fichier contact.html dans le répertoire Hugo /partials de votre site
Ce fichier contiendra le code html du formulaire de contact. Ci-dessous vous trouverez l'exemple du formulaire de contact que j'ai créé.

Quel que soit le thème que vous utilisiez, le truc est d'utiliser l'URL du Webhook créé à l'étape précédente comme destination pour les données du formulaire. Pour cela, il faut adapter la ligne ```<form action = ...>```

**Dans le code ci-dessous, remplacez https://hooks.zapier.com... par l'URL de *votre* hook Zapier créé dans l'étape précédente.**

Vérifiez également que vous avez ```method="POST"``` comme méthode pour le form.

```
{{ "<!-- Contact Section -->" | safeHTML }}
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
           			<h3 class="section-subheading">{{ with .Site.Params.contact.subtitle }}{{ . | markdownify }}{{ end }}</h3>
           			<br>
            </div>
		    </div>
		        <div class="col-md-6 col-md-offset-3 text-left">
		            <form  action="https://hooks.zapier.com/hooks/..." method="POST" name="sentMessage" id="contactForm">
				            <div class="form-group">
				              		<input type="hidden" name="_subject" value="Form sent from page: {{ .RelPermalink }}">
				            	</div>
		                <div class="form-group">
		                    <input type="text" class="form-control" placeholder="{{ with .Site.Params.contact.form.name.text }}{{ .  | markdownify }}{{ end }}" name="name" required data-validation-required-message="{{ with .Site.Params.contact.form.name.warning }}{{ . | markdownify}}{{ end }}">
		                    <p class="help-block text-danger"></p>
		                </div>
		                <div class="form-group">
		                    <input type="email" class="form-control" placeholder="{{ with .Site.Params.contact.form.email.text }}{{ . | markdownify }}{{ end }}" name="email" required data-validation-required-message="{{ with .Site.Params.contact.form.email.warning }}{{ . | markdownify }}{{ end }}">
		                    <p class="help-block text-danger"></p>
		                </div>
		                <div class="form-group">
		                    <input type="tel" class="form-control" placeholder="{{ with .Site.Params.contact.form.phone.text }}{{ . | markdownify }}{{ end }}" name="phone">
		                    <p class="help-block text-danger"></p>
		                </div>
		                <div class="form-group">
		                    <textarea class="form-control" placeholder="{{ with .Site.Params.contact.form.message.text }}{{ . | markdownify }}{{ end }}" name="message" required data-validation-required-message="{{ with .Site.Params.contact.form.message.warning }}{{ . | markdownify }}{{ end }}"></textarea>
		                    <p class="help-block text-danger"></p>
		                </div>
		                <div class="clearfix"></div>
		                <div class="col-lg-12 text-center">
		                    <div id="success">{{ with .Site.Params.contact.success }}{{ . | markdownify }}{{ end }}</div>
		                    <input type="submit" value="{{ with .Site.Params.contact.buttonText }}{{ . | markdownify }}{{ end }}" class="btn btn-primary btn-xl">
		                </div>
                </form>
            </div>
        </div>
    </div>
</section>
```
 
Après cette étape, vous devrez bien sûr modifier le code de vos pages pour qu'elles intègrent le formulaire là où vous le souhaitez ; je ne détaille pas cette étape, si vous lisez cet article c'est que vous savez déjà comment faire.

## Étape 3 : ajoutez le code JavaScript nécessaire à la validation interactive du formulaire
Vous connaissez déjà mon peu d'amour pour JavaScript, mais dans ce cas-ci c'est la seule solution que j'ai trouvé qui fonctionne. Le code est inséré directement dans la page, mais vous pouvez très bien le mettre dans un fichier sous /static/js/

```
<script type="text/javascript">
$(function() {

    $("input,textarea").not("[type=search]").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            
        },
        submitSuccess: function($form, e) {
    	    e.preventDefault();
    	
    	    var submitButton = $('input[type=submit]', $form);
    	    $.ajax({
    	      type: 'POST',
    	      url: $form.prop('action'),
    	      accept: {
    	        javascript: 'application/javascript'
    	      },
    	      data: $form.serialize(),
    	      beforeSend: function() {
				submitButton.prop('value', 'Please Wait...');
				submitButton.prop('disabled', 'disabled');
    	      }
    	    }).done(function(data) {
				submitButton.prop('value', 'Thank you, we\x27ll get back to you shortly.');
    			submitButton.prop('disabled', false);
    			hj('formSubmitSuccessful');
    	    });
        },

        filter: function() {
            return $(this).is(":visible");
        },
    });

});

 
$('#name').focus(function() {
    $('#success').html('');
});
</script> 
```

À noter que même sans ce bout de code JavaScript, la soumission du formulaire au Webhook fonctionnera. Par contre c'est moche ; le visiteur sera redirigé vers une page affichant le résultat technique du Webhook, ce qui n'est vraiment pas idéal. 

## Étape 4 : installez le module JavaScript jqBootstrapValidation
Ce module est nécessaire pour faire fonctionner le code précédent. Vous le trouverez à l'URL suivant :

[http://ReactiveRaven.github.com/jqBootstrapValidation/](http://ReactiveRaven.github.com/jqBootstrapValidation/)

Copiez le fichier jqBootstrapValidation.js dans le répertoire /static/js/

## Étape 5 : finissez de configurer les pages de votre site
N'oubliez pas d'intégrer le code du formulaire et le code JavaScript à vos pages. Sinon évidemment ça ne marchera pas. Selon votre formulaire de contact, il est très probable que vous deviez adapter certains détails du code. **Je *ne pense pas* avoir modifié le code de jqBootstrapValidation** mais avec le temps on oublie parfois...

## Étape 6 : finissez de configurer Zapier
Je ne vais pas expliquer ce qu'il faut faire ici en détail car il y a des dizaines de solutions possibles, mais vous devrez configurer Zapier pour qu'il envoie les donnée du formulaire vers le canal de votre choix : Papier, email etc. Sans cela les données seront bloquées chez Zapier et pas très utiles.

Au final, l'action Zapier pour Slack ressemble à ceci :

![Zapier Slack Action](/pictures/2017/11/zapier-slack-action.jpg)

## Pour résumer...

* J'ai créé un Webhook sur Zapier pour récupérer les données du formulaire.
* J'ai ajouté le fichier contact.html dans le répertoire /layouts/partials du thème, avec le code du formulaire.
* J'ai ajouté le code JavaScript nécessaire lors de la soumission du formulaire.
* J'ai ajouté le fichier jqBootstrapValidation.js dans le répertoire /static/js/
* J'ai fini de configurer l'action Zapier pour poster les données du Webhook sur Slack.

Voilà, j'espère que cela vous aura été utile. Comme dans tout développement de ce type, difficile de garantir que cela fonctionnera tel quel sur votre site, mais cela devrait déjà être un bon point de départ.