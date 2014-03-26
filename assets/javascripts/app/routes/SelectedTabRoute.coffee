define ["ember", "controllers/tabListController"], (Ember, tabListController) ->
  "use strict"

  SelectedTabRoute = Ember.Route.extend(
    model: (params) ->
      tabListController.selectTab params.tab

    renderTemplate: ->
      @render "selectedTab",
        into: "application"
        controller: tabListController
  )

  SelectedTabRoute