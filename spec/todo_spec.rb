require 'todo'

RSpec.describe Todo do
  it "initializes" do
    todo = Todo.new("Walk the dog")
    expect(todo.task).to eq "Walk the dog"
  end

  it "queries an unfinished task" do
    todo = Todo.new("Walk the dog")
    expect(todo.done?).to eq false
  end

  it "queries a finished task" do
    todo = Todo.new("Walk the dog")
    todo.mark_done!
    expect(todo.done?).to eq true
  end

  context "given an empty task" do
    it "fails" do
      expect { todo = Todo.new("")}.to raise_error "no task found"
    end
  end
end
