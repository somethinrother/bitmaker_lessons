
def film_questions

# Secondary Questions
  def follow_up_question
    # Variables
    drama = "The Notebook"
    comedy = "Paul Blart"
    dramedy = "40 First Dates"
    good_book = "House of Leaves"

    # Get Input
    puts "Do you like dramas? y/n"
    drama_like = gets.chomp
    puts "Do you like comedies? y/n"
    comedy_like = gets.chomp

    # Input response
    if drama_like == "y" && comedy_like == "y"
      return "Check out #{dramedy}."
    elsif drama_like == "y" && comedy_like == "n"
      return "Check out #{drama}."
    elsif drama_like == "n" && comedy_like == "y"
      return "Check out #{comedy}."
    elsif drama_like == "n" && comedy_like == "n"
      return "Check out the book #{good_book}."
    else
      return "Please type y or n."
    end

  end

  # Documentary variable
  documentary = "Planet Earth II"

  # Documentary input
  puts "Do you like documentaries? Answer y/n"
  documentary_like = gets.chomp()

  # Documentary response
  if documentary_like == "y"
    return "Check out #{documentary}!"
  elsif documentary_like == "n"
    puts follow_up_question
  else
    return "Please type y or n"
  end

end

puts film_questions
