class Car

  attr_reader :speed
  attr_reader :fuel_level

  def initialize (speed, fuel_level)
    @speed = speed
    @fuel_level = fuel_level
  end

  def acceleration()
    @speed += 10
    @fuel_level -=5
  end

  def break()
    @speed -= 10 if @speed-10 <=0
  end

end

