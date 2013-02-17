define [
	"ember"
	"controllers/tabListController"
	"views/TabMenuItemView"
], (Em, tabListController, TabMenuItemView) ->
  TabMenuView = Em.CollectionView.extend(
    tagName: "ul"
    classNames: ["nav", "tab-menu"]
    controller: tabListController
    contentBinding: "controller.tabs"
    itemViewClass: TabMenuItemView
  )

  TabMenuView