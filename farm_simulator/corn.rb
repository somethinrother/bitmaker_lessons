require_relative 'field.rb'

class CornField < Field
  
  def initialize
    super
    @food_per_hectare = 20
    @field_type = "corn"
  end

end
