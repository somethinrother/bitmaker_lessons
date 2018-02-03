class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # Ensure appropriate gear is added to backpack
    pack_for_weather

    # Ensure gym shoes are added to backpack if it's a gym day
    pack_for_gym

    # Bring a packed lunch on all weekdays
    pack_a_lunch
  end

  def pack_for_rainy_day
    @items << 'umbrella'
  end

  def pack_for_cold_day
    @items << 'jacket'
  end

  def pack_for_weather
    todays_forecast = @attributes[:weather]
    @items << 'pants'
    @items << 'shirt'
    if todays_forecast == 'rainy'
      pack_for_rainy_day
    elsif todays_forecast == 'cold'
      pack_for_cold_day
    end
  end

  def pack_for_gym
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      # Add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def pack_a_lunch
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def items_in_backpack
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
