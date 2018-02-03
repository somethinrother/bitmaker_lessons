def grading
  puts "What % score did you get? (0-100)"
  score = gets.chomp.to_i

  if score >= 97
    puts "You got and A+!"
  elsif score >= 94 && score < 97
    puts "You got an A!"
  elsif score >= 90 && score < 94
    puts "You got an A-!"
  elsif score >= 86 && score < 90
    puts "You got a B+!"
  elsif score >= 83 && score < 86
    puts "You got a B!"
  elsif score.between?(81, 82) # This is a cleaner method!!!
    puts "You got a B-!"
  elsif score >= 76 && score < 80
    puts "You got a C+!"
  elsif score >= 73 && score < 76
    puts "You got a C!"
  elsif score >= 70 && score < 73
    puts "You got a C-!"
  elsif score >= 66 && score < 70
    puts "You got a D+!"
  elsif score >= 63 && score < 66
    puts "You got a D!"
  elsif score >= 60 && score < 63
    puts "You got a D-!"
  elsif score == 0
    puts "You either got nothing correct, or entered a letter :)"
  else
    puts "You got an F..."
  end
end

puts grading

if grade(user_input) == 0 || grade(user_input) < 100
