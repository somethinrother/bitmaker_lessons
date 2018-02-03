def film_questions

  def follow_up_question
  # Variables
    drama = "The Notebook"
    comedy = "Paul Blart: Mall Cop"
    dramedy = "40 First Dates"
    good_book = "House of Leaves"

    drama_like = 0
    comedy_like = 0

    # Get Input
    until drama_like > 0 && drama_like < 6
      puts "Do you like dramas? Rate 1 - 5"
      drama_like = gets.chomp.to_i
      puts "Do you like comedies? Rate 1 - 5"
      comedy_like = gets.chomp.to_i

      # Input Response
      if drama_like == 0 || drama_like > 5
        puts "Please rate between 1 - 5"
      elsif comedy_like == 0 || comedy_like > 5
        puts "Please rate between 1 - 5"
      elsif drama_like > 3 && comedy_like > 3
        puts "You might like #{dramedy}."
      elsif drama_like > 3 && comedy_like < 4
        puts "You might like #{drama}."
      elsif drama_like < 4 && comedy_like > 3
        puts "You might like #{comedy}."
      else
        puts "Just read #{good_book}"
      end
    end
  end

  documentary = "Planet Earth II"
  documentary_like = 0

  until documentary_like > 0 && documentary_like < 6
    puts "Do you like documentaries? Rate 1 - 5"
    documentary_like = gets.to_i

    if documentary_like == 0 || documentary_like > 5
      puts "Please rate between 1 - 5"
    elsif documentary_like > 0 && documentary_like < 4
      puts follow_up_question
    else
      return "Check out #{documentary}!"
    end
  end

end

puts film_questions
