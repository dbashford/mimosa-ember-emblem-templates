define ["ember", "controllers/tabListController", "templates"], (Ember, tabListController) ->
  SelectedTabView = Ember.View.extend(
    classNames: ["hero-unit"]
    templateName: "selectedTabTemplate"
    controller: tabListController
    contentBinding: "controller.selected"
  )
  SelectedTabView