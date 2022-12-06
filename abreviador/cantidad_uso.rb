class CantidadUso

  attr_reader :list_de_uso
  
  def initialize
    @list_de_uso = {"Senor" => 0, "Senora" => 0 , "Senore" => 0}
  end

  def list_de_mas_uso
    @list_de_uso.select {|palabra,usos| usos >= 1}
  end

  def list_de_menos_uso
    @list_de_uso.select {|palabra,usos| usos == 0}
  end
end