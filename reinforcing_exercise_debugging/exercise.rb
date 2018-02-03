def select_cards(possible_cards, hand)

  # # Sets hand size to max 3
  until hand.length == 3
    possible_cards.each do |current_card|

      # # Skips current card if it's already in your hand
      next if hand.include?("#{current_card}")
      print "Do you want to pick up #{current_card}?"
      answer = gets.chomp
      if answer.downcase == 'y' && hand.length < 3
        hand << current_card

        # # Exits loop with message when the hand is full
        if hand.length == 3
          puts "Your hand is full"
          return hand
        end
      else
        puts "You have passed on the #{current_card}."
      end
    end
  end
  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

hand = []

new_hand = select_cards(available_cards, hand)

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
