puts "How many pizzas do you want to order?"
quantity = gets.to_i
pizza_number = 1
# ask for how many toppings they want
# iterate this question quantity times

quantity.times do
  puts "How many pizzas do you want for pizza #{pizza_number}?"
  toppings = gets.to_i
  puts "You have ordered #{toppings} toppings for pizza #{pizza_number}."
  pizza_number += 1
end
