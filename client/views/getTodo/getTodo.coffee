Template.getTodo.events
  'click .add-task': (e, tmpl) ->
    _.filter PossibleTodos, (possibleTodo) ->
      userAnswers = _.map Answers.findOne(userId: Meteor.userId()).answers, (answer) -> answer.answer
      if _.intersection(possibleTodo.criterion, userAnswers).length is userAnswers.length
        console.log possibleTodo
        if Todos.find(todo: possibleTodo).count() is 0
          if possibleTodo.todo is "Сходити в музей"
            tmpl.get5Venues "museum", (venues) ->
              Todos.insert {
                userId: Meteor.userId()
                todo: possibleTodo
                venues: venues
              }

          else
            Todos.insert {
              userId: Meteor.userId()
              todo: possibleTodo
            }


Template.getTodo.onCreated ->
  @get5Venues = (val, cb) ->
    results = []
    navigator.geolocation.getCurrentPosition (position) ->
      Meteor.call 'pushQuery', val, position.coords.latitude, position.coords.longitude, (error, result) ->
        for i in [0..4]
          results[i] = result.response.venues[i]
        cb(results)