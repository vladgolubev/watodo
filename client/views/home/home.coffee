Template.Home.helpers
  tasks: ->
    Tasks.find({userId: Meteor.userId()})
  todos: ->
    Todos.find({userId: Meteor.userId()})
  iftasksnull:->
    Tasks.find({userId: Meteor.userId()}).count() is 0
  iftodosnull:->
    Todos.find({userId: Meteor.userId()}).count() is 0    Todos.find({userId: Meteor.userId()})


Template.Home.events
  'click .todoitem': (event, tmpl) ->
    selectedTodoId = tmpl.$(event.currentTarget).data('todoid')
    Router.go "/todoitem/#{selectedTodoId}"