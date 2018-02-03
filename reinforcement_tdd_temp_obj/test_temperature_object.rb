require 'minitest/autorun'
require 'minitest/pride'
require './temperature.rb'

class TestTemperature < MiniTest::Test

  def test_initialize_fahrenheit
    assert_equal 50, Temperature.new({:f => 50}).to_fahrenheit
  end

  def test_convert_celsius_at_freezing
    assert_equal 0, Temperature.new({:f => 32}).to_celsius
  end

  def test_convert_celsius_at_boiling
    assert_equal 100, Temperature.new({:f => 212}).to_celsius
  end

  def test_convert_celsius_at_body_temperature
    assert_equal 37, Temperature.new({:f => 98.6}).to_celsius
  end

  def test_convert_celsius_at_any_temperature
    assert_equal 20, Temperature.new({:f => 68}).to_celsius
  end

  def test_initialize_celsius
    assert_equal 50, Temperature.new({:c => 50}).to_celsius
  end

  def test_convert_fahrenheit_at_freezing
    assert_equal 32, Temperature.new({:c => 0}).to_fahrenheit
  end

  def test_convert_fahrenheit_at_boiling
    assert_equal 212, Temperature.new({:c => 100}).to_fahrenheit
  end

end
