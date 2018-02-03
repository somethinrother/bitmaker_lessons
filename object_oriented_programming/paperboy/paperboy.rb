class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  # READERS
  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  # INSTANCE METHODS
  def quota
    quota = ((experience / 2) + 50)
    return quota
  end

  def deliver(start_address, end_address)
    number_of_houses = start_address - end_address
    deliveries = (number_of_houses.abs + 1)
    if experience > 0
      puts "----- new day -----"
    end
    puts "You gotta hit at least #{quota} houses today!\n\n"

    # Earnings calculator
    money_counter = 0
    deliveries.times do
      if money_counter == deliveries
        money_counter = 0
      elsif money_counter >= quota
        @earnings = @earnings + 0.50
        money_counter += 1
      else
        @earnings = @earnings + 0.25
        money_counter += 1
      end
    end

    # Under-quota penalty function
    if deliveries < quota
      @earnings = @earnings - 2
    end

    #Results
    puts "------  delivering....  ------\n\n"
    if deliveries > quota
      puts "Whew! I delivered #{deliveries} papers today, and delivered #{deliveries - quota} papers over quota!\n\n"
    elsif deliveries == quota
      puts "Wow, that was close. I delivered #{deliveries} papers today. Hit quota exactly!\n\n"
    else
      puts "Ugh. I delivered #{deliveries} papers today. I missed quota by #{quota - deliveries}...\n\n"
    end

    experience_total(deliveries)

  end

  # Experience total
  def experience_total(deliveries)
    @experience = @experience + deliveries
  end

  # Report
  def report
    puts "I'm #{name}! Nice to meetcha. So far, I've delivered #{experience} papers, and earned $#{earnings}."
  end

end
