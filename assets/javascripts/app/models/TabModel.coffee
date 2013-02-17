define [
	"require"
	"ember"
	"controllers/tabListController"
	], (require, Ember, tabListController) ->
  getTabListController = ->
    tabListController = require("controllers/tabListController") unless tabListController #due to circular dependency
    tabListController

  TabModel = Ember.Object.extend(
    title: null
    content: null
    order: null

    init: ->
      @_super()
      getTabListController()
      @notifyPropertyChange "name"

    onChangeName: ((key, value) ->
      slug = tabListController.createUniqueSlug(@get("name"))
      @set "slug", slug  if slug
    ).observes("name")

    link: (->
      slug = @get("slug")
      if slug
        "#/" + slug
      else
        slug
    ).property("slug")
  )

  TabModel