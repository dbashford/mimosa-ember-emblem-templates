define [
	"ember"
	"text!app/templates/applicationTemplate.html"
], (Ember, applicationTemplate) ->		
  ApplicationView = Ember.View.extend(
  	defaultTemplate: Ember.Handlebars.compile(applicationTemplate)
  )
  ApplicationView