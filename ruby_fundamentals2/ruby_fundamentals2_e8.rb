distance_time_array = []

word = nil
runner = 1

until runner == 5
  if runner == 4

    speed1 = distance_time_array[0]/distance_time_array[1]
    speed2 = distance_time_array[2]/distance_time_array[3]
    speed3 = distance_time_array[4]/distance_time_array[5]

    if speed3 > speed2 && speed3 > speed1
      puts "Person 3 was the fastest at #{speed3} m/s"
    elsif speed2 > speed3 && speed2 > speed1
      puts "Person 2 was the fastest at #{speed2} m/s"
    elsif speed1 > speed3 && speed1 > speed2
      puts "Person 1 was the fastest at #{speed1} m/s"
    elsif speed1 == speed2 && speed2 == speed3
      puts "Everyone tied at #{speed1} m/s"
    else
      puts "Well done everyone!"
    end

    break
  end

  puts "How far did person #{runner} run (in metres)?"
  distance = gets.chomp.to_f
  distance_time_array << distance
  puts "How long (in minutes) did person #{runner} take to run #{distance} metres?"
  mins = gets.chomp.to_f
  distance_time_array << mins * 60
  runner += 1

end
