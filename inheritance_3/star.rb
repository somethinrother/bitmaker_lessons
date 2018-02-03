class Star < Body

  attr_accessor(:name, :mass, :type)

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def star_stats
    puts "I am #{name}, my mass is #{mass.round(2)}kg, and I am a #{type} type star."
  end


end
