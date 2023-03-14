## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

# `verify_punc` takes a string of words and returns true if its acceptable grammar
is_acceptable = verify_punc(text)

text: a string (e.g. "hello WORLD")
is_acceptable = boolean (e.g. true)

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

verify_punc("Hello world.") => true
verify_punc("hello world.") => false
verify_punc("Hello world") => false
verify_punc("Hello world!") => true
verify_punc("Hello world???") => true
verify_punc("") => throw error ("Nothing to verify")


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._