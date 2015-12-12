Template.getTodo.events
  'click .add-task': (e, tmpl) ->
    _.filter PossibleTodos, (possibleTodo) ->
      userAnswers = _.map Answers.findOne(userId: Meteor.userId()).answers, (answer) -> answer.answer
      console.log _.intersection(possibleTodo.criterion, userAnswers)
      if _.intersection(possibleTodo.criterion, userAnswers).length is userAnswers.length
        Todos.insert {
          userId: Meteor.userId()
          todo: possibleTodo
        }