require 'test_helper'

class DragonTest < ActiveSupport::TestCase

  def test_that_dragon_shoots_fire
    dragon = build(:dragon)
    assert_equal( "#{dragon.name} emits a jet of flame!", dragon.dracarys )
  end

  def test_that_normal_dragon_cannot_eat_forty_sheep
    dragon = build(:dragon)
    refute( dragon.can_eat_40_sheep? )
  end

  def test_that_insatiable_dragon_can_eat_forty_sheep
    hungry_dragon = build(:dragon, appetite: 'Insatiable')
    assert( hungry_dragon.can_eat_40_sheep? )
  end

  def test_that_young_dragons_from_asoiaf
    young_dragon = build(:dragon)
    young_dragon.age = (0..3).to_a.sample
    skip unless young_dragon
    assert_equal( 'A Song of Ice and Fire', young_dragon.period_alive)
  end

  def test_that_middle_dragons_from_targ_dynasty
    middle_dragon = build(:dragon)
    middle_dragon.age = (19..414).to_a.sample
    skip unless middle_dragon
    assert_equal( 'Targaryen Dynasty', middle_dragon.period_alive)
  end

  def test_that_ancient_dragons_from_age_of_valyria
    ancient_dragon = build(:dragon)
    ancient_dragon.age = (415..9000).to_a.sample
    skip unless ancient_dragon
    assert_equal( 'Age of Valyria', ancient_dragon.period_alive)
  end

  def test_that_stranger_cannot_mount
    rider = build(:rider)
    rider.save
    rider.name = "Aegon"
    dragon = build(:dragon)
    dragon.save
    dragon.name = "Balerion"
    skip unless rider && dragon
    assert_equal("Balerion bucks off Aegon!", dragon.mount(rider))
  end

  def test_that_the_right_rider_can_mount
    rider = build(:rider)
    rider.save
    rider.name = "Aegon"
    dragon = build(:dragon)
    dragon.save
    dragon.name = "Balerion"
    dragon.rider = rider
    skip unless rider && dragon
    assert_equal("Aegon soars into the air on Balerion's back!", dragon.mount(rider))
  end

end
