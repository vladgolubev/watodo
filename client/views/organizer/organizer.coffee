Template.Organizer.onCreated ->
  @taskCreating = new ReactiveVar false

Template.Organizer.events
  'click .add-task': (e, tmpl) ->
    tmpl.taskCreating.set true


Template.Organizer.helpers
  tasks: ->
    Tasks.find()
  taskCreating: ->
    Template.instance().taskCreating.get()