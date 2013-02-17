define ["ember"], (Ember) ->
  Router = Ember.Router.extend()

  Router.map ->
    @route "index",
      path: "/"

    @route "selectedTab",
      path: "/:tab"

    # @resource "tabs",
    #   path: "/"
    # , ->
    #   @route "selectedTab",
    #     path: ":tab"

  Router