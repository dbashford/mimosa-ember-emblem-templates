define ["ember"], (Ember) ->
  Router = Ember.Router.extend()

  Router.map ->
    @route "selectedTab",
      path: "/:tab"

  Router