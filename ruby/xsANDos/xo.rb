def XO(str)
  character_counter(str, 'x') == character_counter(str, 'o')
end

def character_counter(str, c)
  # why is there an str.split here?
  str.split('').select { |ch| ch == c || ch == c.upcase }.length
  # got it, it converts a string to a chars array
end
