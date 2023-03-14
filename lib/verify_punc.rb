def verify_punc(string)
  fail "Nothing to verify" if string.empty?
  return true if string[0].match(/^[A-Z]/) && (".!?".include? string[-1])
  false
end