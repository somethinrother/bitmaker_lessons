# # Part 1

emotions = {
            :anger => 1,
            :hunger => 1,
            :sadness => 1,
            :happiness => 3,
            :confusion => 2,
            :contentment => 3,
            :comfort => 2
           }

# # Part 2

class Person
  def initialize(name, emotions_hash)
    @name = name
    @emotions = emotions_hash
  end

  def name
    @name
  end

  def emotions
    @emotions
  end

# # Part 3

  def emotion_meter
    emotions.each do |key, value|
      if value == 3
        puts "#{name} is feeling a high amount of #{key}."
      elsif value == 2
        puts "#{name} is feeling a medium amount of #{key}."
      elsif value == 1
        puts "#{name} is feeling a low amount of #{key}."
      else
        puts "Please make sure you enter a number between 1 and 3."
      end
    end
  end
end

jerry = Person.new("Jerry", emotions)

jerry.emotion_meter
