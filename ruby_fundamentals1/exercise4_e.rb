# Number guessing game
secret_number = 37

puts "Guess the secret number and win a prize!!!"
user_num = gets.to_i

if secret_number == user_num
  puts "You win! Your prize is a feeling of success."

elsif user_num == secret_number + 1
  puts "So close!"

elsif user_num == secret_number - 1
  puts "So close!"

else
  puts "You lose!"

end
