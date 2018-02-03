# # Task class, for generating tasks in a list
class Task
  # # Attribute Accessor
  attr_accessor(:description, :due_date)

  # # User input @ initialization, for the two necessary instance variables
  def initialize
    puts "What's your new task?"
    @description = gets.chomp
    puts "When is it due? (dd/mm)"
    @due_date = gets.chomp
  end

end
