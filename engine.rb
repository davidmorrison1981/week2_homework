class Engine
  attr_reader :fuel_level
  attr_reader :speed

  def initialize (speed, fuel_level)
    @speed = speed
    @fuel_level = fuel_level
  end

  def power()
    if engine == "turbo"
      @speed += 25
      @fuel_level -=10
    else
      @speed += 10
      @fuel_level -=5
    end
  end
end