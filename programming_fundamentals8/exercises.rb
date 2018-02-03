puts "------EXERCISE 1------"

numbers_list = [1, 6, 8, 4, 13, 11, 19, 20, 22, 14, 3]

def total_odd_numbers(number_array)
  total = 0
  number_array.each do |number|
    if number % 2 == 1
      total += number
    end
  end
  return total
end

puts total_odd_numbers(numbers_list)

puts "------EXERCISE 2------"

names_array = ["Jeff", "Junior", "Laura"]

puts "What's your name?"
user_name = gets.chomp

if names_array.detect { |name| name == user_name}
  puts "Hello #{user_name}!"
else
  puts "Who goes there?"
end
