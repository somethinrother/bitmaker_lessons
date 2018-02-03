def word_counter(string)
  word_array = string.split(/ /)
  return word_array.count
end


puts word_counter("Hello world") # returns 2

puts word_counter("This is a sentence") # returns 4

puts word_counter("") # returns 0
