define ["ember", "templates"], (Ember) ->
  TabView = Ember.View.extend(
    classNames: ["tab"]
    templateName: "tabTemplate"
  )

  TabView