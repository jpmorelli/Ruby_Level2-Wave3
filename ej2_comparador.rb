=begin
Modelar un **Comparador** que permita ingresar dos números (A y B) e imprima por pantalla el resultado dependiendo de la operación de la siguiente tabla:

# A y B son iguales -> A * B
# A es mayor que B -> A - B
# A es menor que B -> A + B
=end

class Comparador
    attr_reader :valor_a, :valor_b

    def initialize(valor_a,valor_b)
        @valor_a = valor_a
        @valor_b = valor_b
    end

    def compara
        if @valor_a == @valor_b
            @valor_a * @valor_b
        elsif @valor_a > @valor_b
            @valor_a - @valor_b
        else
            @valor_a + @valor_b
        end
    end
end
