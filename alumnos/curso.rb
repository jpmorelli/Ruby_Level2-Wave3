=begin
Modelar las clases necesarias para un sistema de información de un curso que cumpla con los siguientes requerimientos:
* Modela alumnos deben tener nombre, apellido, y legajo.
* Modela asignaturas deben contar con un nombre, y un código de materia.
* Modela cursos que contienen un conjunto de alumnos y un nombre que los identifica.
* Se debe poder calcular el promedio de un alumno y del curso.
* Se debe poder generar una lista de los alumnos de un curso y si aprobaron o no (La nota con la que se aprueba es un 7).

Se debe poder:
* Inicializar un curso, con su listado de alumnos y materias.
* Se debe poder ingresar las calificaciones de cada alumno en 4 asignaturas (Matemática, Lengua, Sociales, Naturales).
* Poder acceder a toda la funcionalidad implementada por las clases.
=end

require_relative 'alumnos.rb'
require_relative 'asignaturas.rb'

require 'byebug'

class Curso
  
  def initialize
    @cursos=[]
  end

  def agrega_curso(nombre_curso)
    @cursos.push(nombre_curso)
    instance_variable_set("@#{nombre_curso}", [])
  end

  def agrega_alumno(nombre,apellido,legajo)
    ingreso_alumno=Alumnos.new(nombre,apellido,legajo)
    
  end

end
