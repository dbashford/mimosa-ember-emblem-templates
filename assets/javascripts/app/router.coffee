define ["ember"], (Ember) ->
  Router = Ember.Router.extend()

  Router.map ->
    # Not needed since Ember sets this up by default
    # @route "index",
    #   path: "/"

    @route "selectedTab",
      path: "/:tab"

    # @resource "tabs",
    #   path: "/"
    # , ->
    #   @route "selectedTab",
    #     path: ":tab"

  Router