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
