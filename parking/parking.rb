
  require_relative 'car.rb'

  class Parking
    attr_reader :capacity

    def initialize(capacity)
      @capacity = capacity
      @parked_cars = []
      @parking_history = []
    end

    #1) registrar el ingreso de un auto al estacionamiento. Validar que sea un auto y no permitir el ingreso si el estacionamiento está lleno.
    def park_in(car)
      if car.class != Car
        raise "Aca solo estacionamos autos"
      elsif is_full? == true
        raise "Lo sentimos, no hay lugares disponibles"
      else
        @parked_cars.push(car) #autos estacionados
        @parking_history.push(car) #historial autos
      end
    end
  #2) registrar egreso de un auto
    def park_out(plate)
      @parked_cars.delete_if {|car| car.plate == plate}
    end
  #3) lugares ocupados actualmente
    def parked_cars
      @parked_cars.count
    end
  #4) lugares libres actualmente
    def free_capacity
      parked_cars
      @capacity - @parked_cars.count
    end
  #5) porcentaje de ocupacion
    def occupancy
      (@parked_cars.count * 100) / @capacity
    end
  #6) estacionamiento lleno ?
    def is_full?
      @capacity==@parked_cars.count
    end
  #7) registrar cantidad de veces que cada auto ingreso
    def parking_plates
      @parking_history.group_by{|car| car.plate}.map{|k, v| [k, v.length]}.to_h
    end

  #8) registrar cantidad de las diferentes marcas que ingresaron
    def parking_brands
      @parking_history.group_by{|car| car.brand}.map{|k, v| [k, v.length]}.to_h
    end
  #9) Consultar segun patente, cuantas veces entro un auto
    def parking_by_plate(input_plate)
      count_plate = 0
      @parking_history.each do |car|
        if car.plate == input_plate.upcase
          count_plate += 1
        end
      end
    puts count_plate
    end
  #10) Consultar cuantos de una determinada marcas
    def parking_by_brand(input_brand)
      count_brand = 0
      @parking_history.each do |car|
          if car.brand == input_brand.upcase
            count_brand += 1
          end
      end
      puts count_brand
    end
  #11) Autos que ingresaron al menos X cantidad de veces
    def parked_in_at_least_n_times(times)
      parked_times = @parking_history.group_by{|car| car.plate}.map{|k, v| [k, v.length]}.to_a
      parked_times.each do |placa,vez|
        if vez >= times
          puts placa
        end
      end
    end
  #12) Top3 marcas que ingresaron. Devolver un hash mostrando la marca y la cantidad
    def top3_brand
      top_brand = @parking_history.group_by{|car| car.brand}.map{|k, v| [k, v.length]}
      Hash[top_brand.sort_by { |k,v| -v }[0..2]]
    end
  #13) No pedido. Lista histórico de parking.
    def list_parking_history
        @parking_history.each do |car|
          history = "#{car.plate} --- #{car.brand}"
        end
    end

  end
