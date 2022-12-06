# 4 - Ingresar n números enteros en un array, luego ingresar un número cualquiera y crear un nuevo array con todos los números menores e iguales al número que se ingresó. En caso de que no exista ninguno, mostrar un mensaje correspondiente.
#

mi_arreglo = [2,6,7,3,4,9,1]
nuevo_arreglo = []

class Calculos

  def initialize(mi_arreglo,nuevo_arreglo)
    @mi_arreglo = mi_arreglo
    @nuevo_arreglo = nuevo_arreglo
  end
  
  def crea_nuevo_array(numero)
    @mi_arreglo.each do |n|
      if n >= numero then @nuevo_arreglo << n
      end
    end
  end

end

array2 = Calculos.new(mi_arreglo,nuevo_arreglo)
array2.crea_nuevo_array(5)
puts nuevo_arreglo

