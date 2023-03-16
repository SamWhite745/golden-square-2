# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

Create the todo class

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
todo = Todo.new("Walk the dog")
todo.task # => "Walk the dog"

# 2
todo = Todo.new("Walk the dog")
todo.done? # => false

# 3
todo = Todo.new("Walk the dog")
todo.mark_done!
todo.done? # => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

