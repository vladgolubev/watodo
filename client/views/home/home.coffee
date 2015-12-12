Template.Home.helpers
  tasks: ->
    Tasks.find({userId: Meteor.userId()})