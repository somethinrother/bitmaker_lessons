require 'minitest/autorun'
require 'minitest/pride'
# In this problem we are going to make a calculator.
require './calculator.rb'

class TestCalculator < MiniTest::Test
  # add takes two parameters and adds them
  def test_adds_0_and_0
    assert_equal 0, add(0, 0)
  end

  def test_adds_2_and_2
    assert_equal 4, add(2, 2) 
  end

  def test_adds_positive_numbers
    assert_equal 8, add(2, 6)
  end

 # subtract takes two parameters and subtracts the second from the first
  def test_subtracts_numbers
    assert_equal 6, subtract(10, 4)
  end

# sum takes an *array* of numbers and adds them all together
# This one is a bit trickier!
  def test_computes_sum_of_empty_array
    assert_equal(0, sum([]))
  end

  def test_computes_sum_of_single_number
    assert_equal 7, sum([7])
  end

  def test_computes_sum_of_two_numbers
    assert_equal 18, sum([7, 11])
  end

  def test_computes_sum_of_many_numbers
    assert_equal 25, sum([1,3,5,7,9])
  end
end
