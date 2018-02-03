class Farmer

  attr_accessor(:name, :food_stores, :fields, :field_count, :pastures, :pasture_count, :days_worked)

  def initialize
    puts "What's your name, farmer?"
    @name = gets.chomp
    puts "Welcome to your brand new farm, #{name}!"
    # # Hash of counters of each type of food
    @food_stores = {"corn" => 0, "wheat" => 0}
    # # Arrays of fields & pastures
    @fields = []
    @field_count = {"Corn fields" => 0, "Wheat fields" => 0}
    @pastures = []
    @pasture_count
    @days_worked = 0
  end

  def new_field
    user_input = nil
    until user_input == 1 || user_input == 2
      puts "Which type of field would you like to plant?"
      puts "1 - Corn field"
      puts "2 - Wheat field"
      user_input = gets.chomp.to_i
      hectares = nil
      if user_input == 1
        until hectares.class == Integer
          puts "How many hectares will the new field occupy?"
          hectares = gets.chomp.to_i
          field = Field.create :CornField
          field.field_size = hectares
          fields << field
          field_count["Corn fields"] += 1
        end
      elsif user_input == 2
        until hectares.class == Integer
          puts "How many hectares will the new field occupy?"
          hectares = gets.chomp.to_i
          field = Field.create :WheatField
          field.field_size = hectares
          fields << field
          field_count["Wheat fields"] += 1
        end
      else
        user_input = nil
      end
    end
  end

  def new_pasture

  end

  def harvest
    user_input = nil
    until user_input.class == Integer
      puts "Which type of field would you like to harvest?"
      puts "1 - Corn field"
      puts "2 - Wheat field"
      user_input = gets.chomp.to_i
      if user_input == 1
        if field_count["Corn fields"] < 1
          puts "How can you harvest corn you haven't grown?"
        else
          type = "corn"
          fields.each do |field|
            if field.field_type == type
              food = field.produce_food
              food_stores["corn"] += food
              puts "You harvest that corn."
            end
          end
        end
      elsif user_input == 2
        if field_count["Wheat fields"] < 1
          puts "How can you harvest wheat when you haveth none?"
        else
          type = "wheat"
          fields.each do |field|
            if field.field_type == type
              food = field.produce_food
              food_stores["wheat"] += food
              puts "You harvest that wheat."
            end
          end
        end
      else
        user_input = nil
      end
    end
  end

  def hectare_counter
    total_hectares = 0
    fields.each do |field|
      total_hectares += field.field_size
    end
    return total_hectares
  end

  def relax
    if field_count["Corn fields"] == 0 && field_count["Wheat fields"] == 0
      puts "How can you relax before you've even started your work?"
    end
    if field_count["Corn fields"] > 0
      puts "You sit in peace as your corn shines in the sun."
    end

    if field_count["Wheat fields"] > 0
      puts "Your wheat fields are growing gloriously, and it soothes your soul."
    end
  end

  def farm_status
    puts "Right now, you have #{field_count["Corn fields"]} corn field(s), and #{field_count["Wheat fields"]} wheat field(s), occupying a total of #{hectare_counter} hectares. You have #{food_stores["corn"]}lbs of corn, and #{food_stores["wheat"]}lbs of wheat in my stores."
  end

  def main_menu
    while true
      print_main_menu
      user_input = gets.to_i
      call_option(user_input)
    end
  end

  def print_main_menu
    puts "-------------------------------------"
    puts "Options:"
    puts "1 - Add a new field to your farm"
    puts "2 - Harvest your fields"
    puts "3 - Display your farm's stats"
    puts "4 - Take some time to relax"
    puts "5 - Exit"
    puts "-------------------------------------"
  end

  def call_option(user_input)
    if user_input <= 0 || user_input > 5
      main_menu
    elsif user_input == 1
      new_field
    elsif user_input == 2
      harvest
    elsif user_input == 3
      farm_status
    elsif user_input == 4
      relax
    else user_input == 5
      exit
    end
  end
end
