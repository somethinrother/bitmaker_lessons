require 'pry'

class Temperature
  def initialize(hash_of_temp_unit_and_degrees)
    @temperature = hash_of_temp_unit_and_degrees
  end

  def to_fahrenheit
    if @temperature[:c]
      @temperature = {:f => (@temperature[:c] * (9.0 / 5.0)) + 32}
      @temperature[:f]
    else
      @temperature[:f]
    end
  end

  def to_celsius
    if @temperature[:f]
      @temperature = {:c => ((@temperature[:f] - 32) * (5.0 / 9.0))}
      @temperature[:c]
    else
      @temperature[:c]
    end
  end

  def method_name

  end
end
