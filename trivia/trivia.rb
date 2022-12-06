# Implementar la clase Trivia, compuesta por un conjunto de elementos de la clase Preguntas. Toda Trivia
# debe ser creada indicando la cantidad de preguntas que tendrá.
# Las Preguntas deben tener una serie de respuestas asociadas, de las cuales sólo una puede ser la correcta.
# Además, cada pregunta tiene una Clasificación (Cine, Música, Deporte, Política).
# Debemos poder:
#  
# Agregar/Remover una respuesta dentro de una pregunta.
# Cambiar la respuesta correcta de una pregunta.
# Cambiar la categoría de una pregunta.
# Averiguar de cuántas preguntas está conformada la trivia.
# Saber cuántas preguntas hay de una cierta categoría.
# Listar las opciones de una cierta pregunta.
# Agregar/Remover una pregunta.
# Agregar categorías.
# Validar si una respuesta es la correcta para su pregunta.
# Proveer un vector con las respuestas contestadas por un usuario, y calcular el puntaje logrado en la trivia.


require 'byebug'

class Trivia
      attr_accessor :preguntas, :limite_preguntas, :texto
      attr_reader :categorias

      def initialize
        @preguntas = []
        @categorias = ['Cine','Musica','Deporte','Politica']
      end

      def add_pregunta(pregunta)
          @preguntas << pregunta
      end

      def list_pregunta
        @preguntas.each do |s,index|
          puts s.texto
          end
      end
      def remove_pregunta(pregunta)
        @preguntas.delete_if {|s| s.texto == pregunta }
      end
      def list_categorias
        @categorias.each do |s|
        puts s
    end
end

  end

class Pregunta
        attr_accessor :texto, :respuestas, :categoria                                                      
        attr_reader :rta_correcta

        def initialize(texto, respuestas, correcta, categoria) 
          @texto = texto
          @respuestas = respuestas
          @correcta = correcta
          @categoria = categoria
        end  
  end

# Main Program Methods ##

def add_pregunta
	  puts "Ingrese una pregunta"
	  texto = gets.chomp
	  puts "Ingrese las respuestas"
    respuestas = gets.chomp
    puts "Agrega la opcion correcta"
    correcta = gets.chomp.to_i
    puts "A que categoria pertenece"
    categoria = gets.chomp
    pregunta = Pregunta.new(texto,respuestas,correcta,categoria)
    @trivia.add_pregunta(pregunta)
  end
  
 

################ Main Program

@trivia = Trivia.new

loop do
  puts "1 - Ingresar pregunta"
  puts "2 - Remover pregunta"
  puts "3 - Listar preguntas"
  puts "4 - Listar categorias"
  puts "5 - Salir"
  selected_option = gets.chomp
	case selected_option
    when "1"
      add_pregunta
    when "2"
      puts "Ingrese la pregunta a borrar: "
	    borra = gets.chomp
      @trivia.remove_pregunta(borra)
    when "3"
      @trivia.list_pregunta
	  when "4"
      puts "Lista de categorias disponibles:"
      @trivia.list_categorias
    when "5"  
	    puts "Hasta luego, gracias por usar Trivia !!!"
      break
    else
      puts "Ingrese una opcion valida :)"
  end
end