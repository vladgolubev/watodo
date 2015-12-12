Template.Organizer.onRendered ->
  pickerFrom = new Pikaday(field: $('#from')[0])
  pickerTo = new Pikaday(field: $('#to')[0])

Template.Organizer.events
  'click .add-task': (e, tmpl) ->
    taskName = tmpl.$("#title").val()

    Tasks.insert {
      title: taskName
      from: tmpl.$('#from').val()
      to: tmpl.$('#to').val()
    }


Template.Organizer.helpers
  tasks: ->
    Tasks.find()