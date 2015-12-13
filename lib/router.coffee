Router.map ->
  @configure
    layoutTemplate: 'Layout'
    loadingTemplate: 'Loading'

  @route '/',
    name: 'Home'

  @route '/organizer',
    name: 'Organizer'

  @route '/todo-choose',
    name: 'GetTodo'

  @route '/test',
    name: 'Test'

  @route '/auth',
    name: 'Authorization'


  @route '/todoitem/:id',
    name: 'TodoItem'
    data: ->
      @params.id

if not Meteor.isServer
  Router.onBeforeAction ->
    if not (Meteor.user() or Meteor.loggingIn())
      Router.go '/auth'
    @next()
  , except: ['auth']