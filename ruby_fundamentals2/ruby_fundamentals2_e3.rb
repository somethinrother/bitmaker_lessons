def is_even?(my_number)
  remainder = my_number % 2

  if remainder == 1
    false
  else
    true
  end

end

puts is_even?(2)

puts is_even?(3)
