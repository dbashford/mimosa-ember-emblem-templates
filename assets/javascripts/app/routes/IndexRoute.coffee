define ["ember", "controllers/tabListController"], (Ember, tabListController) ->
  "use strict"

  IndexRoute = Ember.Route.extend(
    setupController: (indexController, model) ->
      tabListController.showFirstTab()

    renderTemplate: ->
      @render "selectedTab",
        into: "application"
        controller: tabListController
  )

  IndexRoute