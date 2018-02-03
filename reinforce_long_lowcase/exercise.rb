word_array = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]

def long_low(array)
  array.each do |word|
    if word.length > 4 && word == word.downcase
      puts "long and lowercase"
    elsif word.length > 4
      puts "long"
    elsif word == word.downcase
      puts "lowercase"
    else
      puts word
    end
  end
end

long_low(word_array)
