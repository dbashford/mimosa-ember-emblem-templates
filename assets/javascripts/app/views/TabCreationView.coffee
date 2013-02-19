define ["ember", "controllers/tabListController", "templates"], (Em, tabListController) ->
  TabCreationView = Em.View.extend(
    content: null
    controller: tabListController
    templateName: "tabCreationTemplate"
  )
  TabCreationView