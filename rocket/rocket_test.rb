require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new
  end

  def test_initialize_name
    name = @rocket.name

    assert name
  end

  def test_initialize_colour
    colour = @rocket.colour

    assert colour
  end

  def test_initialize_flying
    flying = @rocket.flying?

    refute flying
  end

  def test_lift_off
    @rocket.lift_off
    flying = @rocket.flying?

    assert flying
  end

  def test_land
    @rocket.lift_off
    @rocket.land
    flying = @rocket.flying?

    refute flying
  end

  def test_status_flying_is_true
    @rocket.lift_off

    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is flying through the sky!"

    assert_equal(actual, expected)
  end

  def test_status_flying_is_false
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"

    assert_equal(actual, expected)
  end
end
