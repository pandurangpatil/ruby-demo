class Vehicle
  attr_accessor :manufacturer, :model, :color, :price

  def initialize(manufacturer, model, color, price)
    @manufacturer = manufacturer
    @model = model
    @color = color
    @price = price
  end

  def start_engine
    puts "Starting the engine of #{@manufacturer} #{@model}."
  end
end


