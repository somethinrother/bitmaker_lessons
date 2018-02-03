require_relative 'jogger.rb'

class Menu
  def initialize
    puts "Let's go for a run!"
  end

  def print_menu_options
    puts 'Enter your choice:'
    puts '1 - Walk'
    puts '2 - Run'
    puts '3 - Eat'
    puts '4 - Meditate'
    puts '5 - Check stats'
    puts '5 - Go Home'
  end

  def main_menu(player)
    while true
      print_menu_options
      user_input = gets.to_i
      menu_options(player, user_input)
    end
  end

  def menu_options(player, user_input)
    if user_input < 1 || user_input > 6
      puts 'Please choose from options 1 - 6'
    elsif user_input == 1
      player.walk
    elsif user_input == 2
      player.run
    elsif user_input == 3
      player.eat
    elsif user_input == 4
      player.meditate
    elsif user_input == 5
      player.jogger_stats
    elsif user_input == 6
      player.go_home
    else
      return nil
    end
  end
end

menu = Menu.new

carl = Jogger.new

menu.main_menu(carl)
