require_relative 'body'
require_relative 'planet'
require_relative 'star'
require_relative 'moon'

class System

  def initialize
    @bodies = []
  end

  def list_of_bodies
    @bodies
  end

  def add_body(body)
    body_counter = []
    list_of_bodies.each do |b|
      if body.name == b.name
        body_counter << b
      end
    end
    if body_counter.size == 0
      @bodies << body
    end
  end

  def total_mass
    total = 0
    list_of_bodies.each do |body|
      total += body.mass
    end
    puts "The solar system has #{total} mass units."
  end
end

solar_system = System.new
earth = Planet.new("Earth", 5.972*10**24, 24, 365)
sun = Star.new("Sol", 1.989*10**30, "G")
moon = Moon.new("Luna", 7.348*10**22, 27, earth)
jupiter = Planet.new("Jupiter", 1.89*10**27, 9.9, 4380)
saturn = Planet.new("Saturn", 5.683*10**26, 10.7, 10759)
mars = Planet.new("Mars", 6.39*10**23, 25, 687)
spoop = Planet.new("Mars", 6.39*10**23, 25, 687)

solar_system.add_body(sun)
solar_system.add_body(earth)
solar_system.add_body(moon)
solar_system.add_body(jupiter)
solar_system.add_body(saturn)
solar_system.add_body(mars)

puts solar_system.list_of_bodies.inspect

solar_system.total_mass
