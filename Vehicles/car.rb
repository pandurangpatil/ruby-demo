require_relative './vehicle'

class Car < Vehicle
  attr_accessor :num_doors

  def initialize(manufacturer, model, color, price, num_doors)
    super(manufacturer, model, color, price)
    @num_doors = num_doors
  end

  def drive
    puts "Driving the #{@manufacturer} #{@model} with #{@num_doors} doors."
  end
end



car = Car.new('Toyota', 'Camry', 'Red', 25000, 4)
car.start_engine
car.drive