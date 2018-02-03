# # Dice code

def double_roll
  result1 = Random.rand(6) + 1
  result2 = Random.rand(6) + 1
  total = result1 + result2
  puts "You rolled a #{result1} and a #{result2}."
  puts "Your total is #{total}."
  if result1 == result2
    puts "Doubles!!"
  end
end

double_roll
