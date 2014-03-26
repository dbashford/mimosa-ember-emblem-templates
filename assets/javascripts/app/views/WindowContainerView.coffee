define ["ember", "templates",	"jqueryui"], (Ember) ->
  WindowContainerView = Ember.View.extend(
    classNames: ["window-container"]
    templateName: "windowContainer"

    didInsertElement: ->
      @$().draggable
        cancel: ".content"
        cursor: "move"
        containment: "body"
        scroll: true
        scrollSensitivity: 100
  )

  WindowContainerView