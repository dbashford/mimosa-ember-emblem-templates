define [
	"ember"
	"text!app/templates/tabTemplate.html"
], (Ember, tabTemplate) ->
  TabView = Ember.View.extend(
    classNames: ["tab"]
    template: Ember.Handlebars.compile(tabTemplate)
  )

  TabView