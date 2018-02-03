require 'pry'

class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
  end

  def add(hash_of_word_and_definition)
    if hash_of_word_and_definition.class != Hash
      @new_word = {hash_of_word_and_definition => nil}
    else
      @new_word = hash_of_word_and_definition
    end

    @new_word.each do |word, definition|
      @entries[word] = definition
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    keywords.include?(word)
  end

  def find(word_segment)
    keywords.reduce({}) do |matching_items, keyword|
      if keyword.start_with?(word_segment)
        matching_items[keyword] = @entries[keyword]
      end
      matching_items
    end
  end

end
