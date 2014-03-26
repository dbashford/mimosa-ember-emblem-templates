define ["ember", "controllers/tabListController", "templates"], (Ember, tabListController) ->
  SelectedTabView = Ember.View.extend(
    classNames: ["hero-unit"]
    controller: tabListController
    contentBinding: "controller.selected"
  )
  SelectedTabView