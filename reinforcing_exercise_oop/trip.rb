require_relative 'location'

class Trip
  attr_accessor(:destinations)

  def initialize
    @destinations = []
  end

  def travel
    destinations.each_cons(2) do |destination|
      puts "You travelled from #{destination[0].name} to #{destination[1].name}."
    end
  end

end

my_trip = Trip.new

Location.create("Germany", my_trip)
Location.create("Bangkok", my_trip)
Location.create("Canada", my_trip)
Location.create("France", my_trip)
Location.create("Iceland", my_trip)
Location.create("Zimbabwe", my_trip)
Location.create("Atlantis", my_trip)

my_trip.travel
