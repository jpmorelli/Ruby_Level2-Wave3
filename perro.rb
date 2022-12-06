class Perro  
 
  # método inicializar clase
  def initialize(raza, nombre) 
    # atributos   
    @raza = raza  
    @nombre = nombre  
  end  
 
  # método ladrar
  def ladrar(cantidad_de_ladridos)
    cantidad_de_ladridos.times do
      puts 'Guau! Guau!'
    end
  end  
 
  # método saludar
  def saludar(cantidad_de_saludos)
    cuanto_saludo_de_verdad = cantidad_de_saludos.times do |i|
      next if i > 3
      puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"  
    end
  end  
end