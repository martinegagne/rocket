require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_new_name
    #arrange
    rocket = Rocket.new
    # act
    result = rocket.name
    #assert
    assert name != nil
  end

  def test_name_change
    #arrange
    rocket = Rocket.new
    # act
    result = rocket.name=("aries i")
    #assert
    assert_equal(result, "aries i")
  end

  def test_colour
    #arrange
    rocket = Rocket.new
    # act
    result = rocket.colour=("blue")
    #assert
    assert_equal(result, "blue")
  end

  def test_colour_change
    #arrange
    rocket = Rocket.new
    # act
    result = rocket.colour=("yellow")
    #assert
    assert_equal(result, "yellow")
  end

  def test_if_flying
    #arrange
    rocket = Rocket.new(flying: true)
    # act
    result = rocket.flying?
    #assert
    assert_equal(result, true)
  end

  def test_lift_off_is_true
    #arrange
    rocket = Rocket.new(flying: false)
    # act
    result = rocket.lift_off
    #assert
    assert_equal(result, true)
  end

  def test_lift_off_is_false
    #arrange
    rocket = Rocket.new(flying: true)
    # act
    result = rocket.lift_off
    #assert
    assert_equal(result, false)
  end

  def test_land_is_true
    #arrange
    rocket = Rocket.new(flying: true)
    # act
    result = rocket.land
    #assert
    assert_equal(result, true)
  end

  def test_land_is_false
    #arrange
    rocket = Rocket.new(flying: false)
    # act
    result = rocket.land
    #assert
    assert_equal(result, false)
  end

  def test_status_if_flying
    #arrange
    rocket = Rocket.new(flying: true)
    # act
    result = rocket.status
    #assert
    assert_equal("Rocket #{rocket.name} is flying through the sky!", result)
  end

  def test_status_if_not_flying
    #arrange
    rocket = Rocket.new(flying: false)
    # act
    result = rocket.status
    #assert
    assert_equal(result, "Rocket #{rocket.name} is ready for lift off!")
  end

end
