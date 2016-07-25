require ("minitest/autorun")
require ("minitest/rg")
require_relative("../engine")

class TestEngine < MiniTest::Test

  def test_speed_increase_fiat()
    @abarth.acceleration()
    assert_equal(10,@fiat.speed) 
    assert_equal(95, @fiat.fuel_level)
  end

  def test_speed_increase_abarth()
    @abarth.acceleration()
    assert_equal(25,@abarth.speed) 
    assert_equal(10, @abarth.fuel_level)
  end
end