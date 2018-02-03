# EXERCISE 0

# Part 1
favourite_colours = ["green", "black", "orange", "blue", "pink"]
relations_ages = [28, 51, 16, 58]
coin_flips = ["heads", "heads", "tails", "heads", "tails"]
favourite_artists = ["Mastodon", "Opeth", "Tatsuro Yamashita", "Kendrick Lamar"]
favourite_colours_symbols = [:green, :black, :orange, :blue, :pink]

# Part 2
words_definitions = {
  "sweater" => "A knitted garment typically with long sleeves, worn over the upper body.",
  "golf" => "A game played on a large open-air course, in which a small hard ball is struck with a club into a series of small holes in the ground, the object being to use the fewest possible strokes to complete the course.",
  "stinky" => "Having a strong or unpleasant smell."
}
favourite_movies = {
  "UHF" => 1989,
  "The Matrix" => 1999,
  "Mad Max: Fury Road" => 2015,
  "Akira" => 1988,
}
city_populations = {
  "Vancouver" => 647450,
  "Hong Kong" => 7347000,
  "Paris" => 2244000
}
relations_ages_hash = {
  "Samantha" => 16,
  "Rosedave" => 29,
  "Hermes" => 19,
  "Orrin" => 28
}

puts "EXERCISE 1 ---------------"

puts "1 ---------------"
puts coin_flips

puts "2 ---------------"
puts favourite_colours[0]

puts "3 ---------------"
puts relations_ages.sort

# Part 4
relations_ages << 0

puts "5 ---------------"
puts favourite_movies.values[3]

puts "EXERCISE 2 ---------------"

puts "1 ---------------"
puts favourite_colours.last

# Part 2
city_populations[:tibet] = 3000000

# Part 3
coin_flips.reverse!

puts "4 ---------------"
puts city_populations.values[2]

puts "5 ---------------"
favourite_artists.each do |artist|
  puts "I think #{artist} is super cool."
end

puts "EXERCISE 3 ---------------"

puts "1 ---------------"
puts favourite_artists[0]
puts favourite_artists[1]

puts "2 ---------------"
favourite_movies.each do |movie, year|
  puts "#{movie} came out in #{year}."
end

puts "3 ---------------"
puts relations_ages.sort.reverse!

puts "4 ---------------"
favourite_movies["Beauty and the Beast"] = [1991, 2017]
puts favourite_movies

puts "EXERCISE 4 ---------------"

puts "1 ---------------"
relations_ages.each do |relation|
  if relation < 30
    puts relation
  end
end

puts "2 ---------------"
relations_ages.sort!.reverse!
puts relations_ages.first

puts "3 ---------------"
puts coin_flips.count("heads")

# Part 4
favourite_artists.delete("Opeth")

# Part 5
city_populations["Paris"] = 2255000

puts "EXERCISE 5 ---------------"

puts "1 ---------------"
puts city_populations.values[0] + city_populations.values[1] + city_populations.values[2]

puts "2 ---------------"
relations_ages_hash.each do |name, age|
  if age > 28
    puts "#{name} is old."
  else
    puts "#{name} is young."
  end
end

puts "3 ---------------"
puts favourite_colours[-1]
puts favourite_colours[-2]

puts "4 ---------------"
relations_ages.each do |age|
  age += 1
  puts age
end

# Part 5
favourite_colours.push "turqoise"
favourite_colours.push "magenta"

# EXERCISE 6

# Part 1
movies_by_year = {
  1999 => ["The Matrix", "Star Wars: Episode I", "The Mummy"],
  2009 => ["Avatar", "Star Trek", "District 9"],
  2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}

Part 2
phone_buttons = [
  ["1", "2", "3"],
  ["4", "5", "6"],
  ["7", "8", "9"],
  ["*", "0", "#"]
]

phone_buttons.each do |i|
  puts "#{i}"
end

# Part 3
countries = [
          {:name => "Nigeria",
           :continent => "Africa",
           :island? => false},

          {:name => "Cuba",
           :continent => "North America",
           :island? => true},

          {:name => "Pakistan",
           :continent => "Asia",
           :island? => false}
            ]

puts "EXERCISE 7 ---------------"

puts "1 ---------------"
puts "I will not skateboard in the halls " * 20

puts "2 ---------------"
no_skateboard = []
20.times do
  no_skateboard.push "I will not skateboard in the halls"
end
puts no_skateboard

# Part 3
numbers = (1..50).to_a

number_sum = 0

puts "4 ---------------"
numbers.each do |number|
  number_sum += number
end

puts number_sum

puts "5 ---------------"
triple_number = []

array_numbers = (1..50).to_a

array_numbers.each do |number|
  3.times do
    triple_number << number
  end
end

puts triple_number

puts "6 ---------------"
not_island_countries = []
island_countries = []

countries.each do |country|
  if country[:island?] == false
    not_island_countries << country[:name]
  else
    island_countries << country[:name]
  end
end

puts not_island_countries
puts island_countries

puts "EXERCISE 8 ---------------"

puts "1 ---------------"
expenses = [437, 108, 27, 43, 96, 201, 339, 214, 5, 67, 8]

expenses_sum = 0

expenses.each do |expense|
  expenses_sum += expense
end

puts expenses_sum

puts "EXERCISE 9 ---------------"

puts "1 ---------------"
items_needed = [
               "salt",
               "onions",
               "garlic",
               "olive oil",
               "shampoo",
               "cheese",
               "salmon"
               ]

items_needed.each do |item|
  puts "*#{item}"
end

# Part 2
items_needed << "rice"

def list(items_needed)
  items_needed.each do |item|
    print "*#{item}\n"
  end;
end

list(items_needed)

puts "3 ---------------"
puts items_needed.count

puts "4 ---------------"
def item_checker(items_needed, item)
  if items_needed.include? "#{item}"
    puts "You've already put that in your list."
  else
    puts "You need to pick up #{item}."
  end
end

item_checker(items_needed, "bananas")

puts "5 ---------------"
puts items_needed[1]

puts "6 ---------------"
def sorted_list(items_needed)
  items_needed.sort!
  items_needed.each do |item|
    print "*#{item}\n"
  end;
end

sorted_list(items_needed)

puts "7 ---------------"
items_needed.delete "salmon"

sorted_list(items_needed)
