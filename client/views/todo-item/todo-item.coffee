Template.TodoItem.onRendered ->
  @$('.todo-item').parent().css('padding', 0)

Template.TodoItem.helpers
  todo: ->
    todoId = Template.instance().data
    Todos.find(_id: todoId)