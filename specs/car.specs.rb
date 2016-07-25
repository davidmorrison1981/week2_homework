require ("minitest/autorun")
require ("minitest/rg")
require_relative("../car")
require_relative("../engine")

class TestCar < MiniTest::Test

  def setup()
    @fiat= Car.new(0,100, "standard")
    @abarth = Car.new(0, 100, "turbo")
  end

  def test_speed_increase_standard()
    @abarth.acceleration()
    assert_equal(10,@fiat.speed) 
    assert_equal(95, @fiat.fuel_level)
  end

  def test_speed_increase_turbo()
    @abarth.acceleration()
    assert_equal(25,@abarth.speed) 
    assert_equal(90, @abarth.fuel_level)
  end
 
  def test_speed_brake()
    @abarth.brake()
    assert_equal(-10,@abarth.speed) 
  end
end
