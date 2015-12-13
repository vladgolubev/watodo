Template.getTodo.events
  'click .add-task': (e, tmpl) ->
    _.filter PossibleTodos, (possibleTodo) ->
      userAnswers = _.map Answers.findOne(userId: Meteor.userId()).answers, (answer) -> answer.answer
      console.log _.intersection(possibleTodo.criterion, userAnswers)
      if _.intersection(possibleTodo.criterion, userAnswers).length > 1
        Todos.insert {
          userId: Meteor.userId()
          todo: possibleTodo
        }

      if possibleTodo.todo is "Сходити в музей"
        results = []
        val = "museum"
        #      Meteor.call 'pushQuery',val, error, result
        #        showPosition (position) ->
        Meteor.call 'pushQuery', val, (error, result) ->
          console.log error, result
          showPosition (position) ->


          navigator.geolocation.getCurrentPosition(showPosition)

          for i in [0...4]
            results[i] = result