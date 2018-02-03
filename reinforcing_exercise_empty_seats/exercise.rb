require 'pry'

guests = [
         [nil, "Pumpkin", nil, nil],
         ["Socks", nil, "Mimi", nil],
         ["Gismo", "Shadow", nil, nil],
         ["Smokey","Toast","Pacha","Mau"]
         ]

def seating_list(seating_array)
  seating_array.each_with_index do |row, row_index|
    # binding.pry
    row.each_with_index do |seat, seat_index|
      if seat == nil
        puts "Row #{row_index + 1} seat #{seat_index + 1} is free."
        user_input = nil
        until user_input == "y" || user_input == "n"
          puts "Would you like this seat? (y/n)"
          user_input = gets.chomp
        end

        if user_input == "y"
          puts "What's your name?"
          user_name = gets.chomp
          row[row_index] = user_name

          puts "Row #{row_index + 1} seat #{seat_index + 1} has been taken by #{user_name}"
          puts "Have a great day!"
          return
        elsif user_input == "n"
          next
        end
      end
    end
  end
end

seating_list(guests)
puts guests.inspect
