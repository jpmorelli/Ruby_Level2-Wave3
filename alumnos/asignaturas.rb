class Materia
  attr_reader :legajo, :notas, :notas_legajo
  
  def initialize
      @cod_materias=['MAT','LEN','SOC','NAT']
      @notas_legajo={}
  end

  def ingresar_notas
    @cod_materias.each do |codigo|
      puts "Ingrese nota para #{codigo}"
      nota=gets.to_i
      @notas_legajo[codigo] = nota
    end
  end

  def lista_notas
    @notas_legajo.each do |k,v|
      puts "#{k} : #{v}"
    end
  end

end


