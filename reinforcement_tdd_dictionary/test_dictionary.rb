require 'minitest/autorun'
require 'minitest/pride'
require './dictionary.rb'

class TestDictionary < MiniTest::Test
  def setup
    @dictonary = Dictionary.new
  end

  def test_empty_on_creation
    assert_empty @dictonary.entries
  end

  def test_add_entry_with_keyword_and_definition
    @dictonary.add('fish' => 'aquatic animal')
    assert_equal({'fish' => 'aquatic animal'}, @dictonary.entries)
    assert_equal ['fish'], @dictonary.keywords
  end

  def test_add_keywords_without_definition
    @dictonary.add('fish')
    assert_equal({'fish' => nil}, @dictonary.entries)
    assert_equal ['fish'], @dictonary.keywords
  end

  def test_check_if_keyword_exists
    # refute asserts falsy, !assert
    refute @dictonary.include?('fish')
  end

  def test_check_if_keyword_exists_after_add
    refute @dictonary.include?('fish') # if the method is empty, this test passes
    @dictonary.add('fish')
    assert @dictonary.include?('fish') # confirms that it actually checks
    refute @dictonary.include?('bird') # confirms not always returning true after add
  end

  def test_does_not_include_prefix
    @dictonary.add('fish')
    refute @dictonary.include?('fi')
  end

  def test_does_not_find_word_in_empty_dictionary
    assert_empty @dictonary.find('fi')
  end

  def test_finds_nothing_if_prefix_matches_nothing
    @dictonary.add('fiend')
    @dictonary.add('great')
    assert_empty @dictonary.find('nothing')
  end

  def test_finds_entry
    @dictonary.add('fish' => 'aquatic animal')
    assert_equal({'fish' => 'aquatic animal'}, @dictonary.find('fish'))
  end

  def test_finds_multiple_matches_from_prefix_and_returns_entire_entry
    @dictonary.add('fish' => 'aquatic animal')
    @dictonary.add('fiend' => 'wicked person')
    @dictonary.add('great' => 'remarkable')
    assert_equal({'fish' => 'aquatic animal', 'fiend' => 'wicked person'}, @dictonary.find('fi'))
  end

  def test_lists_words_alphabetically
    @dictonary.add('zebra' => 'African land animal with stripes')
    @dictonary.add('fish' => 'aquatic animal')
    @dictonary.add('apple' => 'fruit')
    # Enter %w(apple fish zebra) in irb and see what happens
    assert_equal %w(apple fish zebra), @dictonary.keywords
  end
end
