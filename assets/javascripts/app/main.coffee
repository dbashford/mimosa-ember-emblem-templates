define [
  "views/WindowContainerView"
  "views/TabIndexView"
  "views/SelectedTabView"
  "views/TabMenuView"
  "views/TabView"
  "controllers/tabListController"
  "app/router"
  "routes/IndexRoute"
  "routes/SelectedTabRoute"
  "fixtures/tabFixtures"
  ], (WindowContainerView, TabIndexView, SelectedTabView, TabMenuView, TabView, tabListController, Router, IndexRoute, SelectedTabRoute, tabFixtures) ->

  #setup
  tabListController.addTabs tabFixtures.tabs

  #Module Pattern
  App =
    WindowContainerView: WindowContainerView
    TabIndexView: TabIndexView
    SelectedTabView: SelectedTabView
    TabMenuView: TabMenuView
    TabView: TabView
    tabListController: tabListController
    Router: Router
    IndexRoute: IndexRoute
    SelectedTabRoute: SelectedTabRoute

  App