define ["ember", "controllers/tabListController", "templates"], (Em, tabListController) ->
  TabMenuItemView = Em.View.extend(
    tagName: "li"
    templateName: "tabMenuItem"
    controller: tabListController
    classNameBindings: ["selected"]
    selected: (->
      "active" if @get("content") is @get("controller.selected")
    ).property("controller.selected").cacheable()
    click: (e) ->
      e.preventDefault()
      tabListController.showTab @get("content")
  )

  TabMenuItemView