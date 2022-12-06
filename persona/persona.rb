=begin
14. Modelar la clase Persona con el DNI, Nombre, Apellido y un array con Cuentas Corriente (Ejercicio 5).
* Se debe poder agregar/eliminar cuentas hasta un maximo de 3 cuentas por persona.
* Se debe poder calcular el estado de la persona, "En regla" o "Morosa" si alguna de las cuentas del usuario se encuentra con saldo negativo.
=end

require_relative 'cuenta.rb'

class Persona

  def initialize(dni,nombre,apellido,estado=false)
    @cuentas=[]
    @saldos=[]
    @dni=dni
    @nombre=nombre
    @apellido=apellido
    @estado=estado
  end

  def agregar_cuenta(nombre,saldo)
    if @cuentas.length >= 3
      puts "Cada persona solo puede tener hasta 3 cuentas"
    else
    nueva_cuenta=Cuenta.new(nombre,saldo)
    @cuentas.push(nueva_cuenta.cuenta)
    @saldos.push(nueva_cuenta.saldo)
    end
  end

  def lista_cuentas
    for i in 0..2 do
      puts @cuentas[i]
      puts @saldos[i]
      puts
      if @saldos[i] < 0
        @estado=true
      end
    end
  end

  def calcular_estado
    if @estado==true
      puts "La persona se encuentra como 'Morosa'"
    else
      puts "La persona se encuentra como :'En regla' "
    end
  end

end

