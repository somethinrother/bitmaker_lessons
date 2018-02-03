require_relative 'planet.rb'
require 'pry'

class Rover
  attr_accessor :name, :x_coordinate, :y_coordinate, :rotation, :planet, :facing

  def initialize(name)
    @name = name
    @x_coordinate = 0
    @y_coordinate = 0
    @rotation_console = {
                1 => "NORTH",
                2 => "EAST",
                3 => "SOUTH",
                4 => "WEST"
                }
    @movement_console= {
                1 => 1,
                2 => 1,
                3 => -1,
                4 => -1
                }
    @facing = nil
    @planet = nil
  end

  # # Naming function
  def self.construct
    puts "Constructing rover"
    puts "..................."
    puts "What is your new rover's nickname?"
    rover = Rover.new(name)
    rover.name = gets.chomp
    return rover
  end

  # Assigns rover a planet to explore
  def mission(galaxy)
    user_input = nil

    until user_input == "y" || user_input == "n"

      puts "It's time for #{name}'s mission. Which planet will it be travelling to? (y to select planet, n to cycle to next planet.)"

      galaxy.each do |planet|
        puts "#{planet.name} - #{planet.years_from_earth} years from Earth"
        puts "Would you like to travel here? y/n"
        user_input = gets.chomp

        if user_input == "y"
          @planet = planet
          return
        else
          next
        end

      end
    end
  end

  # # Assigns starting location to the rover
  def landing
    @x_coordinate = Random.rand(planet.max_width)
    @y_coordinate = Random.rand(planet.max_width)
    @facing = Random.rand(4) + 1
    # puts "#{name} has safely landed on the Martian plateau. It is 10 units high, and 10 units wide."
  end

  # # Gives back current location
  def report
    puts "GRID LOCATION (#{x_coordinate}, #{y_coordinate}). FACING #{@rotation_console[facing]}."
  end

  # # Moves the rover
  def move
    number_of_moves = nil
    while number_of_moves.class != Integer
      puts "How many times would you like to move?"
      number_of_moves = gets.chomp.to_i
    end

    # #
    if @facing == 2 || @facing == 4

      number_of_moves.times do
        @x_coordinate += @movement_console[@facing]

        # # Makes sure the rover gives an accurate grid location, based on planet size
        if x_coordinate > @planet.max_width
          @x_coordinate = x_coordinate - @planet.max_width
        elsif x_coordinate < @planet.min_width
          @x_coordinate = x_coordinate + @planet.max_width
        end
      end

    elsif @facing == 1 || @facing == 3

      number_of_moves.times do
        @y_coordinate += @movement_console[@facing]

        # # Makes sure the rover gives an accurate grid location, based on planet size
        if y_coordinate > @planet.max_height
          @y_coordinate = y_coordinate - @planet.max_height
        elsif y_coordinate < @planet.min_height
          @y_coordinate = y_coordinate + @planet.max_height
        end
      end
    end
    report
  end

  # # Rotates the mars rover
  def spin_left
    @facing -= 1
    @facing = 4 if facing == 0
    report
  end

  def spin_right
    @facing += 1
    @facing = 1 if facing == 5
    report
  end

  # # All of this should be, including Rover.construct, should be mission control functions
  # Allows the input of a string of commands
  def self.mission_control
    rover = Rover.construct
    rover.mission(Planet.galaxy)
    rover.landing
    rover.report

    command = ""

    # # Turn this into a hash
    until command == "s"
      puts "Please input your string of commands"
      if command == ""
        puts "m moves forward (you choose how many times per m), l turns left, r turns right, and s returns #{name} to the shuttle."
        puts "Example -- mmmlmlmrrrmmms"
      end
      command = gets.chomp
      command_list = command.split(//)

      command_list.each do |i|
        if i == "s"
          puts "#{rover.name} has returned to the shuttle."
          command = "s"
          break
        elsif i == "m"
          rover.move
          command = "m"
        elsif i == "l"
          rover.spin_left
          command = "l"
        elsif i == "r"
          rover.spin_right
          command = "r"
        else
          puts "unrecognized command"
        end
      end
    end
  end

end

Rover.mission_control
