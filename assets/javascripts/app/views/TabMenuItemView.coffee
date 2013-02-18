define ["ember", "controllers/tabListController", "text!app/templates/tabMenuItemTemplate.html"], (Em, tabListController, tabMenuItemTemplate) ->
  TabMenuItemView = Em.View.extend(
    tagName: "li"
    template: Ember.Handlebars.compile(tabMenuItemTemplate)
    controller: tabListController
    classNameBindings: ["selected"]
    selected: (->
      "active"  if @get("content") is @get("controller.selected")
    ).property("controller.selected").cacheable()
    click: (e) ->
      e.preventDefault()
      tabListController.showTab @get("content")
  )

  TabMenuItemView