## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

# `estimate time` takes a string of words and returns how long it takes to read them
time_to_read = estimate_time(text)

text: a string (e.g. "hello WORLD")
time_to_read: integer representing number of seconds



## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._