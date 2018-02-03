class Location
  attr_accessor(:name)

  def initialize(name)
    @name = name
  end

  def self.create(name, trip_name)
    new_location = Location.new(name)
    trip_name.destinations << new_location
  end
end
