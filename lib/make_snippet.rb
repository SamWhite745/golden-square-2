def make_snippet(string)
  words = string.split(" ")

  if words.length > 5 
    words.first(5).join(" ") + "..."
  else 
    words.join(" ")
  end
end