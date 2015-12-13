Template.TodoItem.onRendered ->
  @$('.todo-item').parent().css('padding', 0)

Template.TodoItem.helpers
  todo: ->
    todoId = Template.instance().data
    console.log Todos.findOne(_id: todoId)
    Todos.findOne(_id: todoId)