roll1 = 1
roll2 = 1
permutations = 0

until roll1 == 7
  if roll2 == 7
    roll2 = 1
  end
  if roll2 < 6
    total = roll1 + roll2
    puts "Dice roll: #{roll1}, #{roll2} Total: #{total}"
    roll2 += 1
    permutations += 1
  else
    total = roll1 + roll2
    puts "Dice roll: #{roll1}, #{roll2} Total: #{total}"
    roll1 += 1
    roll2 += 1
    permutations += 1
  end
end

puts "There are #{permutations} possible permutations."
