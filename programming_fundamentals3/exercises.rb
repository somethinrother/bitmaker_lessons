# # TRAIN DATA

train_array = [
              {train: "72C", frequency_in_minutes: 15, direction: "north"},
              {train: "72D", frequency_in_minutes: 15, direction: "south"},
              {train: "610", frequency_in_minutes: 5, direction: "north"},
              {train: "611", frequency_in_minutes: 5, direction: "south"},
              {train: "80A", frequency_in_minutes: 30, direction: "east"},
              {train: "80B", frequency_in_minutes: 30, direction: "west"},
              {train: "110", frequency_in_minutes: 15, direction: "north"},
              {train: "111", frequency_in_minutes: 15, direction: "south"}
              ]
# # TRAIN STATISTIC VARIABLES

train_111_hash = train_array.find {|hash| hash[:train] == "111"}
train_111_direction = train_111_hash[:direction]

train_80b_hash = train_array.find {|hash| hash[:train] == "80B"}
train_80b_frequency = train_80b_hash[:frequency_in_minutes]

train_610_hash = train_array.find {|hash| hash[:train] == "610"}
train_610_direction = train_610_hash[:direction]

# # TRAIN DIRECTION ARRAYS

northbound_trains = []
eastbound_trains = []

def train_direction_finder(input_array, output_array, direction)
  input_array.each do |h|
    if h[:direction] == direction
      output_array << h[:train] # using puts to test if working
    end
  end
end

# # ALTERNATE METHOD!!
# tester = train_array.select do |h|
#   h[:direction] == "north"
# end
#
# tester_names = tester.map do |i|
#   i[:train]
# end

train_direction_finder(train_array, northbound_trains, "north")

train_direction_finder(train_array, northbound_trains, "east")

# # ADDING FIRST DEPARTURE TIME TO ONE HASH
train_array.each do |h|
  if h[:train] == "111"
    h[:first_departure_time] = 6
  end
end

puts train_array
