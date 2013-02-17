define [
	"ember"
	"controllers/tabListController"
	"text!app/templates/selectedTabTemplate.html"
], (Ember, tabListController, selectedTabTemplate) ->
  Ember.TEMPLATES["selectedTab"] = Ember.Handlebars.compile(selectedTabTemplate)
  
  SelectedTabView = Ember.View.extend(
    classNames: ["hero-unit"]
    templateName: "selectedTab"
    controller: tabListController
    contentBinding: "controller.selected"
  )
  SelectedTabView