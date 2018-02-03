require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new('Superteam', 'AAA', ['Bob', 'Harry'])
  end

  def test_that_hash_is_made_correctly
    actual = @team.to_hash
    expected = {
      team_name: 'Superteam',
      level: 'AAA',
      points: 0
    }

    assert_equal(actual, expected)
  end

end
