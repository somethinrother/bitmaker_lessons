def bitmaker_buzz
  number = 0

  until number == 101
    if number == 0
      puts "0"
    elsif number % 3 == 0 && number % 5 == 0
      puts "BitMaker"
    elsif number % 5 == 0
      puts "Maker"
    elsif number % 3 == 0
      puts "Bit"
    else
      puts number
    end
    number += 1
  end
end

bitmaker_buzz
