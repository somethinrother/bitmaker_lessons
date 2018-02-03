# Gets the user's age and compares it to the developer's age

user_age = gets.to_i
my_age = 28

if user_age > 105
  puts "I'm not sure I believe you"

elsif user_age >= my_age
  puts "We are #{user_age - my_age} years apart"

else
  puts "We are #{my_age - user_age} years apart"

end
