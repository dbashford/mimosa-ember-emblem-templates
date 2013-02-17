define([
  "ember",
  "text!app/templates/windowContainerTemplate.html",
  "jqueryui"
], function(Ember, windowContainerTemplate){
  var WindowContainerView = Ember.View.extend({
    classNames: ["window-container"],
    template: Ember.Handlebars.compile(windowContainerTemplate),
    didInsertElement: function(){

      this.$().draggable({
        cancel : ".content",
        cursor : "move",
        containment : "body",
        scroll : true,
        scrollSensitivity : 100
      });

    }
  });
  return WindowContainerView;
});
