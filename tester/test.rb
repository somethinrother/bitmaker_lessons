number1 = 0
number2 = 0

until number1 == 12
  if number1 == 11
    number1 = 0
  elsif number1 % 5 == 0
    number1 += 1
    number2 += 1
  else
    number1 += 1
  end

  puts number1
  puts number2
end
