require_relative 'taximeter.rb'

class Taxi
  attr_reader :max_passenger_capacity, :taximeter, :max_bags_capacity, :current_passengers, :current_bags
  BASE_FARE = 40
  KM_COST = 5
  MINUTE_COST = 1

  # This is a comment, initialize is a method
  def initialize(max_passenger_capacity, max_bags_capacity)
    # Arguments can have the same name or not than variables
    @max_passenger_capacity = max_passenger_capacity
    @max_bags_capacity = max_bags_capacity
    @current_passengers = 0
    @current_bags = 0
    @taximeter = Taximeter.new(BASE_FARE, KM_COST, MINUTE_COST)
  end

  def add_bag(number_of_bags)
    if (@current_bags + number_of_bags) <= @max_bags_capacity
      @current_bags = @current_bags + number_of_bags
    else
      puts 'No hay tanto lugar para las valijas que quiere agregar'
    end
  end

  def remove_bag(number_of_bags)
	  if @current_bags >= number_of_bags && number_of_bags > 0
      @current_bags = @current_bags - number_of_bags
    else
      puts 'Imposible !'
    end
  end

  def add_passenger(number_of_passengers)
    if (@current_passengers + number_of_passengers) <= @max_passenger_capacity
      @current_passengers = @current_passengers + number_of_passengers
    else
      puts 'Ya no hay lugar para esa cantidad de pasajeros'
    end
  end

  def remove_passenger(number_of_passengers)
    if @current_passengers >= number_of_passengers && number_of_passengers > 0
      @current_passengers = @current_passengers - number_of_passengers
    else
      puts 'Imposible, no existen esa cantidad de pasajeros en el taxi'
    end
  end

  def calculate_trip_cost(trip_distance_in_kms, trip_duration_in_mins)
    @taximeter.calculate_trip_cost(trip_distance_in_kms, trip_duration_in_mins)
  end
end