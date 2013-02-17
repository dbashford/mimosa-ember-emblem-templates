define [
	"ember"
	"controllers/tabListController"
	"views/TabIndexItemView"
], (Ember, tabListController, TabIndexItemView) ->
  TabIndexView = Ember.CollectionView.extend(
    tagName: "ul"
    classNames: ["nav", "nav-list"]
    controller: tabListController
    contentBinding: "controller.tabs"
    itemViewClass: TabIndexItemView

    didInsertElement: ->
      self = this
      @$().sortable
        axis: "y"
        update: (event, ui) ->
          rows = self.$("li").toArray()
          rows.forEach (row, position) ->
            view = Ember.View.views[$(row).attr("id")]
            view.updateListPosition position
  )
  
  TabIndexView