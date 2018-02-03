# Providing different greetings based on name length

puts "What's your name?"
user_name = gets.chomp

if user_name.length > 10
  puts "Hi #{user_name}."

elsif user_name.length < 10
  puts "Hello #{user_name}."

else
  puts "Hey #{user_name}."

end
