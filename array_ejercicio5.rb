# 5 - En un concurso de conocimiento se almacena en un array los nombres de N participantes y en otro array las notas obtenidas (valores de 0 a 10), se pide mostrar el nombre del participante que obtuvo la mayor nota.
#

opcion='y'
participantes=[]
notas=[]

class Mayor
    attr_accessor :indice

  def initialize(participantes,notas)
    @participantes = participantes
    @notas = notas
  end

  def calculo_mayor_nota
    @notas.index(@notas.compact.max)
  end

end

while opcion=='y'  
  puts "Ingrese nombre del participante"
  participante=gets.chomp
  participantes << participante
  puts "Ingrese nota"
  nota=gets.to_i
  notas << nota
  puts "Desea ingresar otro record (y/n)"
  opcion=gets.chomp
end

  datos = Mayor.new(participantes,notas)
  indice = datos.calculo_mayor_nota
  puts "La mayor nota la saco: #{participantes[indice]} con una nota de #{notas[indice]}"