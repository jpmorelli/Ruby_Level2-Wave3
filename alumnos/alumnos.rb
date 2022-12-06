class Alumnos
  attr_reader :legajo, :nombre, :apellido

  def initialize(nombre,apellido,legajo)
    @nombre = nombre
    @apellido = apellido
    @legajo = legajo
  end

end