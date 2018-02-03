require 'erb'
require 'pry'

kids_data = File.read('data/kids-data.txt')
naughty_letter = File.read('templates/naughty_letter_template.txt.erb')

kids_data.each_line do |kid|

  kids_data_array = kid.split

  # # Removes the whitespace and newline
  infraction_array = kid.split("|")
  infraction_incomplete = infraction_array[1].to_s
  infraction = infraction_incomplete.strip.gsub("\n", "")

  # # Takes just the toys from data, and puts them in randomized arraywdi
  naughty_toy_list = kids_data_array[2..7].shuffle

  name       = kids_data_array[0]
  behaviour  = kids_data_array[1]
  toys       = kids_data_array[2..7]

  next unless behaviour == 'naughty'

  filename    = 'letters/naughty/' + name + '.txt'
  letter_text = ERB.new(naughty_letter, nil, '-').result(binding)

  puts "Writing #{filename}."
  File.write(filename, letter_text)

end

puts 'Finished!'
