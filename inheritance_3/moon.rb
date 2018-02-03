class Moon < Body

  attr_accessor(:name, :mass, :month, :planet)

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def moon_stats
    puts "I am #{name}, my mass is #{mass.round(2)}kg, and I am in orbit around #{planet.name}, which it takes me #{month} earth days to orbit."
  end

end
