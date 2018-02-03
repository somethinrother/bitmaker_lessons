class Vampire
  # # Class Variables
  @@coven = []

  # # Instance Variabless
  def initialize
    @name = "Nameless Vampire"
    @age = rand(1..470)
    @drank_blood_today = false
    @in_coffin = true
    @strength = (1..6).to_a.sample
  end

  # # Class Method
  def self.add_to_coven(vampire)
    @@coven << vampire
  end

  def self.spawn_coven
    rand(1..6).times do
      Vampire.add_to_coven(Vampire.new)
    end
  end

  # # Class Methods
  # # # Readers
  def self.coven
    @@coven
  end

  def self.coffin_counter
    Vampire.coven.count
  end

  # # # General Class Methods
  def self.sunset
    Vampire.coven.each do |vampire|
      vampire.hunt!
      if vampire.hunt_was_successful?
        vampire.drink_blood!
        if vampire.sensed_sunrise?
          vampire.go_home!
        end
      end
    end
  end

  def self.sunrise
    Vampire.coven.delete_if do |vampire|
      !vampire.drank_blood_today? || !vampire.in_coffin?
    end
  end

  # # Instance Methods
  # # # Readers
  def name
    @name
  end

  def age
    @age
  end

  def drank_blood_today?
    @drank_blood_today
  end

  def in_coffin?
    @in_coffin
  end

  # # # General Instance Methods
  def go_home!
    @in_coffin = true
  end

  def drink_blood!
    @drank_blood_today = true
  end

  def hunt!
    @drank_blood_today = false
    @in_coffin = false
  end

  def hunt_was_successful?
    (1..6).to_a.sample < strength
  end

  def sensed_sunrise?
    (1..6).to_a.sample < strength
  end

  def strength
    @strength
  end
end

Vampire.spawn_coven
puts Vampire.coven.inspect
Vampire.sunset
puts Vampire.coven.inspect
Vampire.sunrise
puts Vampire.coven.inspect


# Vampire.spawn_coven
# puts Vampire.coven.inspect
# Vampire.sunset
# puts Vampire.coven.inspect
# Vampire.sunrise
# puts Vampire.coven.inspect
