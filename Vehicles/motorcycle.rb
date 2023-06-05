require_relative './vehicle'

class Motorcycle < Vehicle
  attr_accessor :num_wheels

  def initialize(manufacturer, model, color, price, num_wheels)
    super(manufacturer, model, color, price)
    @num_wheels = num_wheels
  end

  def ride
    puts "Riding the #{@manufacturer} #{@model} with #{@num_wheels} wheels."
  end
end



motorcycle = Motorcycle.new('Harley-Davidson', 'Sportster', 'Black', 12000, 2)
motorcycle.start_engine
motorcycle.ride
