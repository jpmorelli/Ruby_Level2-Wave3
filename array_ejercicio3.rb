# 3 - Ingresar n números enteros en un mi_arreglo, luego ingresar un número, si el número ingresado se encuentra dentro del mi_arreglo, que muestre su posición, caso contrario mostrar el mensaje: “El número no está en el mi_arreglo”.
# 
mi_arreglo = []
num = 1

class Arreglo
  attr_reader :mi_arreglo, :numero
  
  def initialize(mi_arreglo,numero)
    @mi_arreglo = mi_arreglo
    @numero = numero
  end

  def check
	  @mi_arreglo.each_with_index do |n,index|
      if @numero == n
        puts "El numero #{@numero} esta en el mi_arreglo en la posicion #{index}"
        return true
      end
    end
    puts "El numero no está en el array"
	end
end

puts "Vamos a ingresar los numeros del array, para finalizar ingrese 0"
while num != 0
  puts "Ingrese un numero"
  num = gets.chomp.to_i
  if num == 0
    next
  end
  mi_arreglo.push(num)
end
puts "Ahora ingrese el numero que quiere buscar dentro del array"
numero = gets.chomp.to_i
resultado = Arreglo.new(mi_arreglo,numero)

resultado.check


