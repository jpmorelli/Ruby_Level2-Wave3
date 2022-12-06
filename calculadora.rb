class Calculadora
    def sumar(sumando_1, sumando_2)
        sumando_1 + sumando_2
    end

    def multiplicar(multiplo, factor)
        multiplo * factor
    end
end 


# Se puede correr desde irb con: require_relative "calculadora.rb"
# 
# operacion = Calculadora.new
# 
# operacion.sumar(4,5)
# 
# operacion.multiplicar(5,2)
# 
# 