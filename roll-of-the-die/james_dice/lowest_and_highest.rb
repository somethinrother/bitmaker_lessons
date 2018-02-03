# # Dice code

def dice_roll
  result = Random.rand(6) + 1
  return result
end

# # Roll multiplier

def multiple_rolls(number, roll_array)
  number.times do
    roll_array.push dice_roll
  end
end

# # Roll sorting

rolls = []

multiple_rolls(5, rolls)

rolls.sort!

rolls.each do |roll|
  puts "You rolled a #{roll}!"
end

# # Display highest and lowest

puts "The lowest roll was a #{rolls.first}."
puts "The highest roll was a #{rolls.last}."
