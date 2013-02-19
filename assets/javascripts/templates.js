Ember.TEMPLATES["applicationTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  hashTypes = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "MyExampleApp.WindowContainerView", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "MyExampleApp.TabView", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "outlet", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n");
  return buffer;
  
});

Ember.TEMPLATES["selectedTabTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, hashTypes;


  hashTypes = {'unescaped': "STRING"};
  stack1 = helpers._triageMustache.call(depth0, "view.content.html", {hash:{
    'unescaped': ("true")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n");
  return buffer;
  
});

Ember.TEMPLATES["sub/childTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  


  data.buffer.push("This is a nested template that isn't used.\n");
  
});

Ember.TEMPLATES["tabCreationTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '';


  return buffer;
  
});

Ember.TEMPLATES["tabIndexItemTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, hashTypes, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = '', hashTypes;
  data.buffer.push("\n<form class=\"form-inline editableform\">\n  <input type=\"text\" ");
  hashTypes = {'value': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'value': ("view.content.name")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" maxlength=\"30\"> \n  \n  <div class=\"buttons\">\n    <button type=\"button\" ");
  hashTypes = {'on': "STRING",'target': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "changeTitle", {hash:{
    'on': ("click"),
    'target': ("view")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("  class=\"btn btn-primary\"><i class=\"icon-ok icon-white\"></i></button>\n    <button type=\"button\" ");
  hashTypes = {'on': "STRING",'target': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "toggleEditing", {hash:{
    'on': ("click"),
    'target': ("view")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(" class=\"btn\"><i class=\"icon-remove\"></i></button>\n  </div>\n</form>\n");
  return buffer;
  }

function program3(depth0,data) {
  
  var buffer = '', hashTypes;
  data.buffer.push("\n<a ");
  hashTypes = {'href': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'href': ("view.content.link")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("><i class=\"icon-resize-vertical\"></i>\n  ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "view.content.name", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n\n  <div class=\"buttons pull-right\">  \n    <button type=\"button\" ");
  hashTypes = {'on': "STRING",'target': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "toggleEditing", {hash:{
    'on': ("click"),
    'target': ("view")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(" class=\"btn\"><i class=\"icon-pencil\"></i></button>\n    <button type=\"button\" ");
  hashTypes = {'on': "STRING",'target': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "removeTab", {hash:{
    'on': ("click"),
    'target': ("view")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("  class=\"btn btn-danger\"><i class=\"icon-remove-sign icon-white\"></i></button>\n  </div>\n</a>\n");
  return buffer;
  }

  data.buffer.push("\n");
  hashTypes = {};
  stack1 = helpers['if'].call(depth0, "view.editing", {hash:{},inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  return buffer;
  
});

Ember.TEMPLATES["tabMenuItemTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<a ");
  hashTypes = {'href': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'href': ("view.content.link")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" >");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "view.content.name", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</a>");
  return buffer;
  
});

Ember.TEMPLATES["tabTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<div class=\"navbar\">\n  <div class=\"navbar-inner\">\n    ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "MyExampleApp.TabMenuView", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n  </div>\n</div>");
  return buffer;
  
});

Ember.TEMPLATES["windowContainerTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<div class=\"head\"></div>\n<div class=\"content\">\n  ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "MyExampleApp.TabIndexView", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("\n</div>\n");
  return buffer;
  
});