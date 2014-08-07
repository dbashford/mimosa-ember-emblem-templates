define ["app/models/TabModel"], (TabModel) ->
  helper =
    slugify: (str) ->
      return ""  unless str
      str.replace(/[^a-zA-Z0-9-._~]/g, "-").toLowerCase().replace(/^-+/, "").replace(/-+$/, "").replace /-+/g, "-"

    changeHashTo: (str) ->
      window.location.hash = str

    randomLowerCaseLetters: (string_length) ->
      chars = "abcdefghiklmnopqrstuvwxyz"
      @randomIdFrom string_length, chars

    randomIdFrom: (string_length, chars) ->
      i = undefined
      rnum = undefined
      randomstring = ""
      i = 0
      while i < string_length
        rnum = Math.floor(Math.random() * chars.length)
        randomstring += chars[rnum]
        i = i + 1
      randomstring

  tabListController = Em.ArrayController.createWithMixins(
    selected: null
    sortProperties: ["order"]
    sortAscending: true

    tabs: (->
      @filter (item, index, list) ->
        not item.get("deleted")
    ).property("@each.deleted")

    selectTab: (slug) ->
      selectedTab = @get("content").findProperty("slug", slug)
      @set "selected", selectedTab
      selectedTab

    addTab: (tab) ->
      tabs = @get("content")
      tab = TabModel.create(tab)  unless tab.get
      tabs.pushObject tab
      this

    addTabs: (tabs) ->
      if tabs and tabs.length
        self = this
        tabs.forEach (tab) ->
          self.addTab tab

    createTab: (title) ->
      tab = TabModel.create(properties)
      @addTab tab
      @showTab tab

    removeTab: (tab) ->
      controller = this
      tabs = controller.get("content")
      last = tabs.length - 1
      index = tabs.indexOf(tab)
      next_tab = undefined
      return  if index < 0
      if tab is controller.get("selected")
        if last is 0
          next_tab = null
        else if index is last
          next_tab = tabs.objectAt(index - 1)
        else
          next_tab = tabs.objectAt(index + 1)
        if next_tab
          controller.showTab next_tab
        else
          setTimeout ->
            controller.showTab next_tab
            controller.set "selected", null
      #no tab to show
      tab.set "deleted", true

    showTab: (tab) ->
      if tab
        helper.changeHashTo tab.get("link")
      else
        helper.changeHashTo ""

    showFirstTab: ->
      first_tab = @objectAt(0)
      @set "selected", first_tab  if first_tab

    existSlug: (slug) ->
      !!@findProperty("slug", slug)

    createUniqueSlug: (title) ->
      slug = undefined
      unless title
        slug = helper.randomLowerCaseLetters(10)
      else
        slug = helper.slugify(title)
      slug = slug + "-" + @get("content").length + helper.randomLowerCaseLetters(2)  while @existSlug(slug)
      slug
  )

  tabListController