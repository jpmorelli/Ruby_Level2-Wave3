# 2 - Teniendo una estructura hash donde se tenga como key el nombre de un pais y como Value a su capital. Realizar las siguientes # operaciones.
# a) Listar todas las capitales de paises que comienzen con "B"
# b) Listar los paises que tengan capitales que terminen con "a"
# c) Listar los paises que tengan capitales con nombres mayor a 8 caracteres

class Paises
  def initialize(paises)
    @paises=paises
  end

  def capitales_inician_b
    @paises.each {|key, value| puts value if key.slice(0) == 'B'}
  end

  def capitales_terminan_a
      @paises.each {|key,value| puts key if value.slice(-1)=='a'}
  end
  
  def paises_mayor_letras 
      @paises.each {|key,value| puts key if value.size > 8}
  end
end

mi_lista=Paises.new({:Argentina => 'Buenos Aires', :Brasil => 'Brasilia', :Tailandia => 'Bangkok', :Alemania => 'Berlin', :USA => 'Washington'})

puts "Las capitales de paises que empiezan con 'B' son:"
mi_lista.capitales_inician_b
puts "Los paises ingresados cuya capital termina con 'a' son:"
mi_lista.capitales_terminan_a
puts "Los paises cuyas capitales poseen mas de 8 letras en su nombre son:"
mi_lista.paises_mayor_letras
