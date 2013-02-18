Ember.TEMPLATES["applicationTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<!-- <h1>An Example of EmberJS + ReguireJS with the Starter Kit</h1> -->\n<!-- <h2>and some other libraries like jquery.ui & bootstrap</h2> -->\n");
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

Ember.TEMPLATES["sub/applicationTemplate"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<!-- <h1>An Example of EmberJS + ReguireJS with the Starter Kit</h1> -->\n<!-- <h2>and some other libraries like jquery.ui & bootstrap</h2> -->\n");
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