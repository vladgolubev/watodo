Template.TodoItem.helpers
  todo: ->
    todoId = Template.instance().data
    Todos.find(_id: todoId)