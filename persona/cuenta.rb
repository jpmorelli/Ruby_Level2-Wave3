class Cuenta
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

  def transferir(source,target,valor)
    source.debitar(valor)
    target.acreditar(valor)
  end
end
  

