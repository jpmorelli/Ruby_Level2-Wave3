require_relative 'cantidad_uso.rb'

class Abreviador
  attr_reader :abreviaturas, :cantidad

  def initialize
    @abreviaturas = {"Senor" => "Sr.", "Senora" => "Sra." , "Senore" => "Sre."}
    @cantidad = CantidadUso.new
  end

  def abreviar(palabra)
    @cantidad.list_de_uso[palabra.capitalize] += 1
    @abreviaturas[palabra.capitalize]
  end
  
  def agregar_abreviatura(palabra,abreviatura)
    @cantidad.list_de_uso[palabra.capitalize] = 0
    @abreviaturas[palabra.capitalize] = abreviatura.capitalize
  end

  def eliminar_abreviatura(palabra)
    @cantidad.list_de_uso.delete(palabra.capitalize)
    @abreviaturas.delete(palabra.capitalize)
  end 
end