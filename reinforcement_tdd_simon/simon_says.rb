def echo(sentence)
  p "#{sentence}"
end

def shout(sentence)
  echo(sentence).upcase
end

def repeat(sentence, times_to_repeat)
  ("#{echo(sentence)} " * times_to_repeat).strip
end

def start_of_word(word, number_of_letters_from_word)
  letters = word.split(//)
  new_string = ""
  for number in 1..number_of_letters_from_word
    new_string += letters[number - 1]
  end
  new_string
end

def first_word(sentence)
  sentence.split[0]
end
