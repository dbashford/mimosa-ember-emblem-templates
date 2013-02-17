define [
	"ember"
	"controllers/tabListController"
	"text!app/templates/tabCreationTemplate.html"
], (Em, tabListController, tabCreationTemplate) ->
  TabCreationView = Em.View.extend(
    content: null
    controller: tabListController
    template: tabCreationTemplate
  )
  TabCreationView