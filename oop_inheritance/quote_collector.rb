require_relative 'multilinguist.rb'

class QuoteCollector < Multilinguist

  def initialize
    super
    @quotes = [
             "To each their own.",
             "Birds of a feather flock together",
             "You can't have your cake and eat it too.",
             "Smoking like a chimney",
             "Don't look a gift horse in the mouth.",
             "You miss every shot you don't take",
             "Boss hog"
             ]
  end

  def quotes
    @quotes
  end

  def get_quote
    puts say_in_local_language("You have a new quote for me?")
    new_quote = gets.chomp
    @quotes << new_quote
  end

  def say_quote(array)
    puts say_in_local_language("#{array[rand(array.size)]}")
  end

end



jeff = QuoteCollector.new
jeff.get_quote
jeff.say_quote(jeff.quotes)
jeff.travel_to("France")
jeff.get_quote
jeff.say_quote(jeff.quotes)
jeff.travel_to("Germany")
jeff.say_quote(jeff.quotes)
jeff.travel_to("Italy")
