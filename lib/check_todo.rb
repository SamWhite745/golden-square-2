def check_todo(string)
  fail "Nothing found" if string.empty?
  string.include? "#TODO"
end