class Cuadrado
    attr_reader :lado # no es imprescindible salvo que necesitemos consultarlo mas adelante.-

    def initialize(lado)
        puts "Me estas cargando !!!" unless lado > 0
        @lado = lado
    end

    def perimetro
        puts "El perimetro del cuadrado es igual a : #{@lado * 4}"
    end

    def superficie
        puts "La superficie del cuadrado es igual a : #{@lado * @lado}"
    end
end

puts "Ingrese el lado del cuadrado a calcular"
lado = gets.to_i

mi_cuadrado = Cuadrado.new(lado)
mi_cuadrado.perimetro
mi_cuadrado.superficie
