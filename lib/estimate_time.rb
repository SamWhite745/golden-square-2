def estimate_time(text) 
  return fail "No words given!" if text.size == 0
  words = text.split(" ").count / 2
end