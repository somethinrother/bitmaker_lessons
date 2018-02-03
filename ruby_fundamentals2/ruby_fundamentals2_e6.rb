def fahrenheit_2_celsius
  puts "What is the temperature in fahrenheit?"
  fahrenheit = gets.chomp.to_i

  celsius = (fahrenheit - 32) * 5 / 9
  puts "That is #{celsius} degrees in celsius!"
end

puts fahrenheit_2_celsius
