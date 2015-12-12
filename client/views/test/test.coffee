Template.Test.helpers
  questions: ->
    _.unique Questions.find().fetch(), false, (question)->
      question.question

  a: (g) ->
    console.log(g);

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

    Answers.upsert
      userId: Meteor.userId()
      answers: results

    Router.go '/'
