define ["ember", "controllers/tabListController"], (Ember, tabListController) ->
  "use strict"

  SelectedTabRoute = Ember.Route.extend(
    model: (params) ->
      tabListController.selectTab params.tab

    setupController: (seletedTabController, model) ->
      # @controllerFor("tabListController").set "selected", model

    renderTemplate: ->
      @render "selectedTab",
        into: "application"
        controller: tabListController
  )

  SelectedTabRoute