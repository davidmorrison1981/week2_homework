require ("minitest/autorun")
require ("minitest/rg")
require_relative("../car.rb")

class TestCar < MiniTest::Test

  def setup()
    @abarth = Car.new(0, 100)
  end

  def test_speed_increase()
    @abarth.acceleration()
    assert_equal(10,@abarth.speed) 
    assert_equal(95, @abarth.fuel_level)
  end
 
 def test_speed_break()
   @abarth.break()
   assert_equal(-10,@abarth.speed) 
 end

end

