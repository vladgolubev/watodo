Template.Test.helpers
  questions: ->
    _.unique Questions.find().fetch(), false, (question)->
      question.question

  a: (g) ->
    console.log(g);
