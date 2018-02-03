# # Field parent class
class Field
  # # Accessor
  attr_accessor(:field_size, :food_per_hectare, :field_type)

  def initialize
    @field_size = 0
    @food_per_hectare = 0
    @field_type = nil
  end

  # # Class methods
  def self.create vt
    { :CornField => CornField, :WheatField => WheatField }[vt].new
  end

  def all_fields_of_type
    @all_fields_of_type
  end

  # # Instance methods
  def produce_food
    food = field_size * food_per_hectare
    return food
  end
end
