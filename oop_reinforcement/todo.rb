require_relative 'task.rb'

# # To do list class to store tasks
class Todolist
  # # Reader & writer
  attr_accessor(:tasks)

  def initialize
    @tasks = []
  end

  def new_task
    task = Task.new
    tasks << task
  end
end

my_list = Todolist.new

my_list.new_task
my_list.new_task
my_list.new_task

puts my_list.tasks.inspect
