require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
    robot.needs_repairs = true
    robot.foreign_model = true
    # act
    actual = robot.station

    expected = 1
    # assert

    assert_equal(actual, expected)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robot = Robot.new
    robot.needs_repairs = true
    robot.vintage_model = true

    # act
    actual = robot.station

    expected = 2

    # assert
    assert_equal(actual, expected)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robot = Robot.new
    robot.needs_repairs = true

    # act
    actual = robot.station

    expected = 3

    # assert
    assert_equal(actual, expected)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    robot = Robot.new

    # act
    actual = robot.station

    expected = 4

    # assert
    assert_equal(actual, expected)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    robot = Robot.new

    # act
    actual = robot.prioritize_tasks

    expected = -1

    # assert
    assert_equal(actual, expected)

  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    robot = Robot.new
    robot.todos = [1, 3, 5, 7, 8]

    # act
    actual = robot.prioritize_tasks

    expected = 8

    # assert
    assert_equal(actual, expected)

  end

  def test_workday_on_day_off_returns_false
    # arrange
    robot = Robot.new
    robot.day_off = "wednesday"

    # act
    actual = robot.workday?("wednesday")

    expected = false

    # assert
    assert_equal(actual, expected)

  end

  def test_workday_not_day_off_returns_true
    # arrange
    robot = Robot.new
    robot.day_off = "wednesday"

    # act
    actual = robot.workday?("thursday")

    expected = true

    # assert
    assert_equal(actual, expected)

  end

end
