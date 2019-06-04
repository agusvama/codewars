def XO(str)
  character_counter(str, 'x') == character_counter(str, 'o')
end

def character_counter(str, c)
  str.split('').select{ | ch | ch == c || ch == c.upcase}.length
end
