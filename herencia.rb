# class Vehicle
#   def has_wheels?
#     true
#   end
# end

# class Bike < Vehicle
# end

# bike = Bike.new
# puts bike.has_wheels?

# -----------------------------------------------------------------------------------------

# class Dog  
#   def initialize(breed)  
#     @breed = breed  
#   end  
# end  
  
# class Lab < Dog  
#   def initialize(breed, name)  
#     super(breed)  
#     @name = name  
#   end  
  
#   def to_s  
#     "(#@breed, #@name)"  
#   end  
# end  
  
# puts Lab.new("Labrador", "Benzy").to_s

# -----------------------------------------------------------------------------------------


class Vehicle

  attr_reader :age


  def what_am_i?
    "Vehicle"
  end

  def age! 
    @age = 20
  end

  def number_of_wheels; end

  def color
    "Soy el padre y soy rojo"
  end

  def number_of_wheel; end

  def has_motor; end

  def tank_size; end

  def refuel; end

  def number_of_gears; end



end

class Motorized < Vehicle
  def what_am_i?
    "Motorized"
  end
end

class Motorbike < Motorized
  def what_am_i?
    "Motorbike"
  end

  def color
    puts "Mi padres es #{super} yo soy moto y soy azul"
    self
  end

  def self.clase
    p "soy un metodo de clase (self) y puedo ser leida directamente por medio de la clase"
    self
  end

  def age!
    @age = 2
  end
end

class Car < Motorized
  def what_am_i?
    "Car"
  end

  def age!
    @age = 3
  end
end

class Bicycle < Vehicle

  def initialize(gears)
    @gears = gears
  end

  def what_am_i?
    "Bicycle"
  end

  def age!
    @age = 5
  end

  def number_of_gears
    @gears
  end
end

class Skateboard < Vehicle
  def what_am_i?
    "Skateboard"
  end

  def age!
    @age = 1
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

padre = Vehicle.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end

puts "----------------------------------------------"
 p Motorbike.clase
 p padre.color
 p moto.color
