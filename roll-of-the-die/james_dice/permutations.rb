roll1 = 1
roll2 = 1

until roll1 == 7
  if roll2 == 7
    roll2 = 1
  end
  if roll2 < 6
    puts "#{roll1} #{roll2}"
    roll2 += 1
  else
    puts "#{roll1} #{roll2}"
    roll1 += 1
    roll2 += 1
  end
end
