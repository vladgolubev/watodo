Template.Home.helpers
  tasks: ->
    Tasks.find({userId: Meteor.userId()})
  todos: ->
    Todos.find({userId: Meteor.userId()})