class Planet < Body

  attr_accessor(:name, :mass, :day, :year)

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

  def planet_stats
    puts "I am #{name}, my mass is #{mass.round(2)}kg, I have #{day} earth hours in a day, and #{year} earth days in a year."
  end

end
