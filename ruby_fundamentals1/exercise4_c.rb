# Gets the user's name and compares it to the developers' name

my_name = "James"

puts "What's your name?"
user_name = gets.chomp

if my_name == user_name
  puts "Wow, we have the same name!"

else
  puts "Hi #{user_name}! My name is #{my_name}, nice to meet you."

end
