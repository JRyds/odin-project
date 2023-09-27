# # frozen_string_literal: true
# # oop_practice
#
# # 1 - Create a class called MyCar.
# # When you initialize a new instance or object of the class,
# # allow the user to define some instance variables that tell us the year, color, and model of the car.
# # Create an instance variable that is set to 0 during instantiation of the object to track
# # the current speed of the car as well.
# # Create instance methods that allow the car to speed up, brake, and shut the car off.
#
# # 2 - Add an accessor method to your MyCar class to change and view the color of your car.
# # Then add an accessor method that allows you to view, but not modify, the year of your car.
#
# # class MyCar
# #   attr_accessor :year, :color, :model, :speed, :engine
# #
# #   def initialize(year, color, model, engine = 'off', speed = 0)
# #     @year = year
# #     @color = color
# #     @model = model
# #     @engine = engine
# #     @current_speed = 0
# #   end
# #
# #   def speed_up(number)
# #     if self.engine == 'off'
# #       puts 'Please turn the engine on'
# #     else
# #       self.current_speed += number
# #       puts "Your current speed is #{current_speed}"
# #     end
# #   end
# #
# #   def brake
# #     if self.engine == 'off'
# #       puts 'Please turn the engine on'
# #     else
# #       self.current_speed -= 5
# #       puts "Your current speed is #{current_speed}"
# #     end
# #   end
# #   def ignition (switch)
# #     self.engine = switch
# #   end
# #
# #   def color_change(new_color)
# #     self.color = new_color
# #     puts "Your new #{color} paint job looks great!"
# #   end
# #
# # end
#
#
# # 1 - Add a class method to your MyCar class that calculates the gas mileage of any car.
#
# class MyCar
#   def self.gas_mileage(litres, kilometers)
#     puts "#{kilometers / litres} miles per litre of gas"
#   end
#
#   attr_accessor :year, :color, :model, :speed, :engine
#
#   def initialize(year, color, model, engine = 'off', speed = 0)
#     @year = year
#     @color = color
#     @model = model
#     @engine = engine
#     @current_speed = 0
#   end
#
#   def speed_up(number)
#     if self.engine == 'off'
#       puts 'Please turn the engine on'
#     else
#       self.current_speed += number
#       puts "Your current speed is #{current_speed}"
#     end
#   end
#
#   def brake
#     if self.engine == 'off'
#       puts 'Please turn the engine on'
#     else
#       self.current_speed -= 5
#       puts "Your current speed is #{current_speed}"
#     end
#   end
#   def ignition (switch)
#     self.engine = switch
#   end
#
#   def color_change(new_color)
#     self.color = new_color
#     puts "Your new #{color} paint job looks great!"
#   end
#
#   def to_s
#     "My car is a #{color}, #{year}, #{@model}!"
#   end
#
# end

# class Dog
#   attr_accessor :name, :age_in_days
#
#   def initialize(name, age_in_days)
#     @name = name
#     @age_in_days = age_in_days
#   end
#
#   def bark
#     "Ruff ruff"
#   end
#
#   def age_in_years()
#     return(@age_in_days.to_f / 365)
#   end
#
#
# end


class Person
  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def age_update(new_age)
    @age = new_age
  end
  def return_age
    age
  end

end