require './player.rb'

puts "What's your name?"
char_name = gets.chomp
player = Player.new(char_name)

puts "Hail #{player.name}! Welcome to this fair land"
