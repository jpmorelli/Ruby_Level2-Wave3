# 5 - Teniendo un hash donde se tengan como key los apellidos de los alumnos y como values las notas de tres parciales, se busca:
# a) Qué alumnos se sacaron más de 7 en todos los parciales.
# b) Qué alumnos se sacaron menos de 4 en todos los parciales.
# c) Cuántos alumnos se sacaron más de 7 en al menos dos parciales.
# d) El/los alumno/s con mejor promedio.
# e) El/los alumno/s con peor promedio.

# Un hash donde las keys son los apellidos de los alumnos y los values son otro hash…. ese otro hash tiene como keys ‘notas’ y ‘promedio’, para el value de ‘notas’ podés usar un array, para las 3 notas y para el value de ‘promedio’ simplemente un entero.
#hash={"Perez"=>{"notas"=>[7,8,9], "promedio"=>8}}

class Alumnos
  
    def initialize(listado)
      @listado=listado
    end
  
    def generar_promedios
      listado_promedios={}
      @listado.each {|alumno, notas| listado_promedios[alumno]= notas.sum / notas.size}  
      listado_promedios
    end
  
    def notas_mas_de(cantidad=3,limite=7)
      cantidad_de_alumnos=0
      @listado.each do |key,value|
           if value.count {|x| x >limite} >= cantidad 
             puts "Alumno #{key} - NOTAS: " , value, "\n"
             cantidad_de_alumnos+=1
           end
      end
      puts cantidad_de_alumnos, " Alumnos \n"
    end
  
  
    def notas_3_menos_de(limite=4)
      cantidad_de_alumnos=0
      @listado.each do |key,value|
          if value.count {|x| x <limite} == 3 
            puts "Alumno #{key} - NOTAS: " , value, "\n"
            cantidad_de_alumnos+=1
          end
      end
      puts cantidad_de_alumnos, " Alumnos \n"
    end
  
   
    def mejores_promedios
      promedios=generar_promedios
      puts "Mejores Promedios"
      promedios.each {|alumno,prom| print "Alumno #{alumno} - PROMEDIO: #{prom} \n" if prom >= promedios.values.max}
    end  
  
  
    def peores_promedios
      promedios=generar_promedios
      puts "Peores Promedios"
      promedios.each {|alumno,prom| print "Alumno #{alumno} - PROMEDIO: #{prom} \n" if prom <= promedios.values.min}
    end    
    
  end
  
  #EJECUCION
  
  mis_alumnos=Alumnos.new({"Maria"=>[10,10,9],"Juan"=>[8,9,10],"Carlos"=>[10,9,10],"Nacho"=>[1,1,1],"Pedro"=>[3,9,0],"Laura"=>[2,1,0],"Maria"=>[9,9,9],"Jaime"=>[7,7,1]})

  mis_alumnos
  mis_alumnos.notas_mas_de(3,6)
  mis_alumnos.notas_3_menos_de(4)
  mis_alumnos
  mis_alumnos.mejores_promedios
  mis_alumnos.peores_promedios