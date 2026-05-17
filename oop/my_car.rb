class MyCar
  CONSTANT = 15

  attr_accessor :colour, :model, :speed, :car_running
  attr_reader :year

  @@number_of_cars_created = 0

  def initialize(year, colour, model)
    # Common practice to use @ when assigning the initial value of instance variables.
    @year = year
    @colour = colour
    @model = model
    @speed = 0
    @car_running = false

    @@number_of_cars_created += 1
  end

  def speed_up(speed_increase)
    self.speed += speed_increase if car_running
  end

  def brake(brake_strength)
    self.speed -= brake_strength
    self.speed = 0 if speed < 0
  end

  def ignition
    brake(self.speed)
    self.car_running = !self.car_running
  end

  def spray_paint(colour)
    self.colour = colour
    "Finished respraying your #{ model } #{ colour }"
  end

  def test(value)
    # Errors, you cannot reassign a constant variable 
    # CONSTANT = value
    CONSTANT
  end

  def to_s
    "#{ colour } #{ year } #{ model }, it is currently#{ car_running ? "" : " not" } running and going #{ speed } km/h"
  end

  def self.what_am_i
    "This is a MyCar class"
  end

  def self.total_cars_created
    "There has been #{ @@number_of_cars_created } cars created"
  end
end

puts MyCar.total_cars_created
tezza = MyCar.new("2002", "Silver", "Toyota Altezza")
s15 = MyCar.new("1999", "Blue", "Nissan Silvia")
puts MyCar.total_cars_created

tezza.speed_up(50)
tezza.ignition
tezza.brake(100)
tezza.speed_up(150)
tezza.brake(100)
tezza.ignition
puts tezza

