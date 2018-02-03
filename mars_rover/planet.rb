class Planet
  attr_accessor :name, :height, :width, :max_height, :max_width, :min_height, :min_width, :years_from_earth

  MIN_HEIGHT = 0
  MIN_WIDTH = 0

  @@galaxy = []

  def self.galaxy
    @@galaxy
  end

  def initialize(name, max_height, max_width, years_from_earth)
    @name = name
    @max_height = max_height
    @max_width = max_width
    @min_height = MIN_HEIGHT
    @min_width = MIN_WIDTH
    @years_from_earth = years_from_earth
    @@galaxy << self
  end

end

mars = Planet.new("Mars", 30, 30, 1)
uranus = Planet.new("Uranus", 100, 100, 8)
zon = Planet.new("????", 300, 300, 50)
