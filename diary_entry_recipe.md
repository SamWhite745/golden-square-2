# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

Create the diary entry class

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class DiaryEntry
  def initialize(title, contents)
  end

  def title
  end

  def contents
  end

  def count_words
  end

  def reading_time(wpm)
  end

  def reading_chunk(wpm, minutes) 
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 DONE
entry = DiaryEntry.new("My day", "My day was very good")
entry.title # => "My day"

# 2 DONE
entry = DiaryEntry.new("My day", "My day was very good")
entry.contents # => "My day was very good"

# 3 DONE
entry = DiaryEntry.new("My day", "My day was very good")
entry.count_words # => 5

# 4 DONE
entry = DiaryEntry.new("My day", "My day was very good")
entry.reading_time(2) # => 3

# 5 DONE
entry = DiaryEntry.new("My day", "My day was very very good")
entry.reading_time(2) # => 4

# 11 DONE
entry = DiaryEntry.new("My day", "hello world")
entry.reading_time(0) # => fail "reading speed needs to be above 0"

# 6 DONE
entry = DiaryEntry.new("My day", "My day was very very good")
entry.reading_chunk(2,2) # => "My day was very"

# 7 DONE
entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
entry.reading_chunk(2,2) # => "one two three four"
entry.reading_chunk(2,2) # => "five six seven eight"

# 8 DONE
entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
entry.reading_chunk(2,20) # => "one two three four five six seven eight nine ten"

# 9 DONE
entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
entry.reading_chunk(2,20) # => "one two three four five six seven eight nine ten"
entry.reading_chunk(2,2) # => "one two three four"

# 10
entry = DiaryEntry.new("My day", "hello world")
entry.reading_chunk(0,10) # => fail "reading speed needs to be above 0"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

