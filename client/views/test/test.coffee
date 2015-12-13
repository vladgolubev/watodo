Template.Test.helpers
  questions: ->
    _.unique Questions.find().fetch(), false, (question)->
      question.question

Template.Test.events
  'click #submit': (e, tmpl)->
    results = []
    _.each (_.unique Questions.find().fetch(), false, (question)-> question.question), (question) ->
      _.each tmpl.$("input[name='#{question.question}']"), (radio, index) ->
        if $(radio).prop 'checked'
          results.push {
            question: question.question
            answer: $(radio).parent().text().trim()
          }

    if Answers.find(userId: Meteor.userId()).count() > 0
      Answers.update Answers.findOne(userId: Meteor.userId())._id,
        $set:
          answers: results
    else
      Answers.insert
        userId: Meteor.userId()
        answers: results

    Router.go '/todo-choose'
