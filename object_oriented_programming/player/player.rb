class Player
  def initialize(name)
    @name = name
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  # READERS
  def name
    @name
  end

  def lives
    @lives
  end

  def gold_coins
    @gold_coins
  end

  def health_points
    @health_points
  end

  # INSTANCE METHODS
  def stats
    puts lives
    puts gold_coins
    puts health_points
  end

  def level_up
    @lives = @lives + 1
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
    unless gold_coins == 0
      if gold_coins % 10 == 0
        level_up
      end
    end
  end

  def death
    @lives = @lives - 1
    @health_points = 10
  end

  def restart
    puts "#{name} has perished..."
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end

  def do_battle(damage)
    @health_points = @health_points - damage

    if health_points == 0
      death
    end

    if lives == 0
      restart
    end
  end

end
