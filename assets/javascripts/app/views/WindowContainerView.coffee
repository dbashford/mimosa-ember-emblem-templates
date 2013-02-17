define [
	"ember"
	"text!app/templates/windowContainerTemplate.html"
	"jqueryui"
], (Ember, windowContainerTemplate) ->
  WindowContainerView = Ember.View.extend(
    classNames: ["window-container"]
    template: Ember.Handlebars.compile(windowContainerTemplate)

    didInsertElement: ->
      @$().draggable
        cancel: ".content"
        cursor: "move"
        containment: "body"
        scroll: true
        scrollSensitivity: 100
  )

  WindowContainerView