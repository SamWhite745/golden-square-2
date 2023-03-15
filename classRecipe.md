# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class MusicTracks 
  def initialize
  end

  def add(track)
    #Adds the track to the list of songs
  end

  def list
    #return a list of all songs
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 
music = MusicTracks.new
music.list # => []

# 2
music = MusicTracks.new
music.add("Toxic - Britney Spear")
music.list # => ["Toxic - Britney Spear"]

# 3
music = MusicTracks.new
music.add("Toxic - Britney Spear")
music.add("XO - Knightly")
music.list # => ["Toxic - Britney Spear", "XO - Knightly"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

