# frozen_string_literal: true

class Vehicle
  attr_accessor :current_speed, :engine

  def self.gas_mileage(litres, kilometers)
    p "#{kilometers / litres} miles per litre of gas"
  end

  def initialize(engine = "off", current_speed = 0)
    @current_speed = current_speed
    @engine = engine
  end

  def brake
    if engine == 'off'
      p 'Please turn the engine on'
    else
      @current_speed -= 5
      p "Your current speed is #{@current_speed}"
    end
  end

  def ignition(switch)
    @engine = switch
  end

  def speed_up(number)
    if engine == 'off'
      p 'Please turn the engine on'
    else
      @current_speed += number
      p "Your current speed is #{@current_speed}"
    end
  end

  def color_change(new_color)
    self.color = new_color
    p "Your new #{color} paint job looks great!"
  end
end

# MY_CAR
class MyCar < Vehicle
  attr_accessor :year, :color, :model

  MAX_WEIGHT = 3500
  def initialize(year, color, model, engine = 'off', current_speed = 0)
    super(engine, current_speed)
    @year = year
    @color = color
    @model = model
  end
end

# MY_TRUCK
class MyTruck < Vehicle
  attr_accessor :year, :color, :model

  AXLES = 6
  def initialize(year, color, model, engine = 'off', current_speed = 0)
    super(engine, current_speed)
    @year = year
    @color = color
    @model = model
  end
end
