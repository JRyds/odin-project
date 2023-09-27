# frozen_string_literal: true

require_relative 'reverse_beep'
require_relative 'towable'

class Vehicle
  attr_accessor :year, :color, :model, :current_speed, :engine
  @@count = 0

  def self.vehicle_count
    puts "#{@@count} vehicles have been created."
  end

  def self.gas_mileage(litres, kilometers)
    p "#{kilometers / litres} miles per litre of gas"
  end

  def initialize(year, color, model, engine = 'off', current_speed = 0)
    @year = year
    @color = color
    @model = model
    @current_speed = current_speed
    @engine = engine
    @@count += 1
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

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end


# MY_CAR
class MyCar < Vehicle
  include Towable

  MAX_WEIGHT = 3500

end

# MY_TRUCK
class MyTruck < Vehicle
  include ReverseBeep

  AXLES = 6

end

