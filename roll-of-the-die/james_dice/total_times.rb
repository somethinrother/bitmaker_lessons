# roll1 = 1
# roll2 = 1
# permutations = 0
# totals = []
# frequency_of_totals = Hash.new(0)
#
# until roll1 == 7
#   if roll2 == 7
#     roll2 = 1
#   end
#   if roll2 < 6
#     total = roll1 + roll2
#     totals << total
#     # puts "Dice roll: #{roll1}, #{roll2} Total: #{total}"
#     roll2 += 1
#     permutations += 1
#   else
#     total = roll1 + roll2
#     totals << total
#     # puts "Dice roll: #{roll1}, #{roll2} Total: #{total}"
#     roll1 += 1
#     roll2 += 1
#     permutations += 1
#   end
#   # puts "There are #{permutations} possible permutations."
# end
#
# totals.each do |total|
#   frequency_of_totals[total] += 1
# end

# frequency_of_totals.each do |total, frequency|
#   puts "#{total} occurs #{frequency} times."
# end

die = [1, 2, 3, 4, 5, 6]
a = []

for i in (1..6) do
  die.map do |roll|
    a << [i, roll]
  end
end

p a
