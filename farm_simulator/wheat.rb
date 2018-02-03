require_relative 'field.rb'

class WheatField < Field

  def initialize
    super
    @food_per_hectare = 30
    @field_type = "wheat"
  end

end
