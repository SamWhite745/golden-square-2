class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def incomplete
    @todos.select { |todo| !todo.done? }
  end

  def complete
    @todos.select { |todo| todo.done? }
  end

  def give_up!
    @todos.each { |todo| todo.mark_done!}
  end
end