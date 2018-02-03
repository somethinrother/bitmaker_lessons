class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  # READERS
  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  #INSTANCE METHODS
  def eats_at
    if meal_time <= 11
      "#{meal_time + 1} AM"
    elsif meal_time > 12
      "#{meal_time - 11} PM"
    else
      "Please enter a number between 0 and 23"
    end
  end

  def meow
    puts "Meow! My name is #{name}. I love to eat #{preferred_food} at #{eats_at}. Now rub my tum-tum."
  end

end
