class Car
  attr_reader :plate, :brand

  def initialize(plate,brand)
    @plate = plate.upcase
    @brand = brand.capitalize
  end

end
