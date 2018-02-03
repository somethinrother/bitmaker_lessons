require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def test_language_in
    multilinguist = Multilinguist.new
    expected = 'zh'
    actual = multilinguist.language_in("China")

    assert_equal(expected, actual)
  end
end
