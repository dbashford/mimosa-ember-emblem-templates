define([
	"ember",
	"text!app/templates/applicationTemplate.html"
], function(Ember, applicationTemplate) {
	var ApplicationView = Ember.View.extend({
		defaultTemplate: Ember.Handlebars.compile(applicationTemplate)
	});
	return ApplicationView;
});