require 'todo_list'

RSpec.describe TodoList do
  context "initializes" do
    it "returns no incomplete tasks" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []  
    end

    it "returns no complete tasks" do
      todo_list = TodoList.new
      expect(todo_list.complete).to eq []  
    end
  end
end