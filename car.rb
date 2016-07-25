class Car

  attr_reader :speed
  attr_reader :fuel_level
  attr_reader :engine

  def initialize (speed, fuel_level, engine)
    @speed = speed
    @fuel_level= fuel_level
    @engine = engine
  end

  def acceleration(speed, fuel, engine)
    @engine.power()
  end

  def brake(speed)
    @speed -= 10 if @speed-10 <=0
  end

end

