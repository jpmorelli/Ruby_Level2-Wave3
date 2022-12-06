# 2 - Ingresar n números enteros en un mi_arreglo, calcular el promedio entero y luego reemplazar el mayor número del mi_arreglo por el promedio calculado.
# 
mi_arreglo = []
num = 1

class Arreglo
    attr_reader :mi_arreglo
    
    def initialize(mi_arreglo)
      @mi_arreglo = mi_arreglo
    end

    def promedio
    cant_datos= @mi_arreglo.length
      suma=0
      @mi_arreglo.each do |a|
      suma = suma + a
      end
    @average = suma / cant_datos
    end

    def reemplazo_maximo
    @mi_arreglo[@mi_arreglo.rindex(@mi_arreglo.max)] = @average
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

resultado = Arreglo.new(mi_arreglo)
resultado.promedio
resultado.reemplazo_maximo
puts "Muestro los numeros ingresados, el mayor numero fue reemplazado por el promedio"
puts mi_arreglo