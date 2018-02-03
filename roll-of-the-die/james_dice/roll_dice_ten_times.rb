# # Dice code

def dice_roll
  result = Random.rand(6) + 1
  puts "The result of your roll is #{result}."
end

# # Roll multiplier

10.times do
  dice_roll
end
