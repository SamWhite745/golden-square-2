require 'todo'
require 'todo_list'

RSpec.describe "todo integration" do
  context "given a todo list with several todos" do
    it "returns all completed todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Walk the dog")
      todo_1.mark_done!
      todo_2 = Todo.new("Walk the cat")
      todo_3 = Todo.new("Walk the cow")
      todo_3.mark_done!
      todo_4 = Todo.new("Walk the moose")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.add(todo_4)
      expect(todo_list.complete).to eq [todo_1,todo_3]
    end

    it "returns all incompleted todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Walk the dog")
      todo_1.mark_done!
      todo_2 = Todo.new("Walk the cat")
      todo_3 = Todo.new("Walk the cow")
      todo_3.mark_done!
      todo_4 = Todo.new("Walk the moose")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.add(todo_4)
      expect(todo_list.incomplete).to eq [todo_2,todo_4]
    end

    it "completes them all and returns them all as completed" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Walk the dog")
      todo_2 = Todo.new("Walk the cat")
      todo_3 = Todo.new("Walk the cow")
      todo_4 = Todo.new("Walk the moose")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.add(todo_4)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_1,todo_2,todo_3,todo_4]
    end
  end



end