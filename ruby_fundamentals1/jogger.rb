# JOGGING SIMULATOR

class Jogger
  attr_accessor(:distance_from_home, :energy, :time)

  def initialize
    @distance_from_home = 0
    @energy = 10
    @time = 0
  end

  def jogger_stats
    puts "You are #{distance_from_home}km from home."
    puts "You have #{energy} energy."
    puts "#{time} hours have passed."
  end

  def time_passing(hours)
    hours.times do
      @time += 1
      if time == 25
        @time = 0
      end
    end
  end

  def time_of_day
    if time == 6
      puts "It's getting dark..."
    elsif time == 12
      puts "Night has fallen."
    elsif time == 18
      puts "The daylight is bright and enjoyable!"
    elsif time == 24
      puts "The sun seems to be rising."
    else
      return nil
    end
  end

  def exertion(amount)
    @energy -= amount
    if energy <= 0
      @energy = 0
      puts "You feel exhausted. Rest before running more."
    end
  end

  def rest(amount)
    @energy += amount
  end

  def increase_distance(distance)
    @distance_from_home += distance
  end

  def walk
    increase_distance(1)
    rest(1)
    time_passing(1)
    time_of_day
    puts "Walking is so relaxing"
  end

  def run
    if energy >= 5
      increase_distance(5)
      time_passing(1)
      time_of_day
      puts "You feel the wind in your hair!"
    end
    exertion(5)
  end

  def eat
    rest(10)
    time_passing(2)
    time_of_day
    puts "What a satisfying meal!"
  end

  def meditate
    rest(20)
    time_passing(3)
    time_of_day
    puts "You feel like you could run forever."
  end

  def go_home
    if distance_from_home == 0
      puts "You are already at home."
    else
      puts "What an enjoyable run."
      exit
    end
  end

end
