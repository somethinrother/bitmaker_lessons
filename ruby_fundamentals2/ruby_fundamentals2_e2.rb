def negative?(my_number)
  if my_number > 0
    false
  elsif my_number < 0
    true
  else
    "Zero isn't negative or positive"
  end
end

puts negative?(7)

puts negative?(-2)

puts negative?(0)
