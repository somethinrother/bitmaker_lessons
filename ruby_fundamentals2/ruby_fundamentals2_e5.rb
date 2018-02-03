def greet_backwards
  puts "What is your name?"
  user_name = gets.chomp.reverse

  puts "Hello, #{user_name}! Welcome home."
end

puts greet_backwards
