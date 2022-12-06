# 1 - Ingresar n números enteros en un mi_arreglo, calcular el promedio entero y reemplazar todos los números que ocupan las posiciones pares, por el promedio calculado.
#

mi_arreglo = []
num = 1

class Mi_array
  attr_reader :mi_arreglo
  
  def initialize(mi_arreglo)
    @mi_arreglo = mi_arreglo
  end

  def promedio
    @average = mi_arreglo.sum / mi_arreglo.length
    puts "Promedio: #{@average}"
  end

  def reemplazo_pares
    puts @mi_arreglo.each_with_index {|num,index| mi_arreglo[index]=@average if index.even? }
  end
  
end

puts "Vamos a ingresar los numeros del mi_arreglo, para finalizar ingrese 0"
while num != 0
  puts "Ingrese un numero"
  num = gets.chomp.to_i
  if num == 0
    next
  end
  mi_arreglo.push(num)
end

resultado = Mi_array.new(mi_arreglo)
resultado.promedio
resultado.reemplazo_pares


  

