require './cat.rb'

puts "-----EXERCISE 2: The Cat's Meow-----\n\n"

fluffers = Cat.new("Fluffers", "fish", 2)

mr_beardo = Cat.new("Mr. Beardo", "steak", 22)

puts mr_beardo.meow

puts fluffers.meow
