=begin
Escribir una clase Cuenta Corriente, con las siguientes características:
   * Obtener el saldo
   * Debitar un monto
   * Acreditar un monto

   Verificar que es posible:
   * Crear Cuentas Corriente
   * Operar sobre las Cuentas Corrientes
=end

class Cuenta_corriente
  attr_reader :cuenta, :saldo

  def initialize(cuenta,saldo=0)
    @cuenta=cuenta
    @saldo=saldo
  end

  def debitar(valor)
    @saldo=@saldo-valor
  end

  def acreditar(valor)
    @saldo=@saldo+valor
  end

end

def transferir(source,target,valor)
  source.debitar(valor)
  target.acreditar(valor)
end



#
# cuenta1=Cuenta_corriente.new('Nacion',700)
# cuenta2=Cuenta_corriente.new('Provincia',300)
