require './paperboy.rb'

puts "What's your name, paperboy?"
char_name = gets.chomp
paperboy = Paperboy.new(char_name)

puts "Get to work #{paperboy.name}!!"

paperboy.quota
paperboy.deliver(101, 160)
paperboy.earnings
paperboy.report

paperboy.quota
paperboy.deliver(1, 75)
paperboy.earnings
paperboy.report
