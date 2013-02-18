define ["ember", "controllers/tabListController", "text!app/templates/tabIndexItemTemplate.html"], (Em, tabListController, tabIndexItemTemplate) ->
  TabIndexItemView = Em.View.extend(
    tagName: "li"
    content: null
    controller: tabListController
    template: Ember.Handlebars.compile(tabIndexItemTemplate)
    classNameBindings: ["selected"]
    classNames: ["tab-index-item"]

    selected: (->
      "active"  if @get("content") is @get("controller.selected")
    ).property("controller.selected").cacheable()

    removeTab: (e) ->
      tab = @get("content")
      controller = @get("controller")
      controller.removeTab tab

    toggleEditing: ->
      @set "editing", not @get("editing")

    changeTitle: ->
      new_name = @$("input").val()
      @set "content.name", new_name
      @set "editing", false

    onChangeEditing: (->
      if @get("editing")
        Em.run.end()
        @$("input").focus()
    ).observes("editing")

    updateListPosition: (position) ->
      @set "content.order", position

    submit: (e) ->
      e.preventDefault()
  )
  TabIndexItemView