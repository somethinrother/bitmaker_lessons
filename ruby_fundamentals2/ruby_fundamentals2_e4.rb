def letter_counter
  puts "Please type a word!"
  user_string = gets.chomp.to_s.length

  if user_string < 8
    false
  else
    true
  end
end

puts letter_counter
