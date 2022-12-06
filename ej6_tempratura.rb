
# Escribir una clase Temperatura capaz de almacenar y devolver un mismo valor, expresado en diferentes
# unidades de medida (Celsius, Farenheit, Kelvin).
# Tips:
# Celsius a Kelvin:
# 0 °C = 273.15 K
# Kelvin a Celsius:
# 273.15 °C = 0 K
# Celcius a Farenheit:
# °C = (°F - 32) / 1.8
# Farenheit a Celsius:
# °F = (°C * 1.8) + 32
require 'byebug'

class Temperatura
  CELSIUS   = 1
  KELVIN    = 2
  FARENHEIT = 3

  def initialize(type,value)
    @type = type
    @value = value
  end

  def convert
      if CELSIUS == @type #@type == 1 #Celsius
        @celsius = @value
        @kelvin =  convert_celsius_to_kelvin(@value)
        @fahrenheit = convert_celsius_to_fahrenheit(@value)
        elsif KELVIN == @type #Kelvin
          @kelvin = @value
          @celsius = convert_kelvin_to_celsius(@value)
          @fahrenheit = convert_celsius_to_fahrenheit(convert_kelvin_to_celsius(@value))
        elsif FARENHEIT == @type #Fahrenheit
          @fahrenheit = @value
          @celsius = convert_fahrenheit_to_celsius(@value)
          @kelvin = convert_celsius_to_kelvin(convert_fahrenheit_to_celsius(@value))
        else
        puts "Medida de Temperatura invalida"
      end
    puts "El resultado de la Conversion de la Temperatura es:"
    puts "Celsius: #{@celsius}°C"
    puts "Kelvin: #{@kelvin}°K"
    puts "Fahrenheit: #{@fahrenheit}°F"

  end


  def convert_celsius_to_kelvin(a)
    a.to_f + 273.15
  end

  def convert_kelvin_to_celsius(a)
    a.to_f - 273.15
  end

  def convert_celsius_to_fahrenheit(a)
    (a * 1.8) + 32
  end

  def convert_fahrenheit_to_celsius(a)
    (a - 32) / 1.8
  end

end

puts "Que tipo de Medida de Temperatura va a ingresar: (1-3)"
puts "1 - Celsius // 2 - Kelvin // 3 - Fahrenheit"
type = gets.chomp.to_i
puts "Ingrese el valor:"
value = gets.chomp.to_f

conversion = Temperatura.new(type,value)
conversion.convert
