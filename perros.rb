class Perro
    attr_reader :nombre, :raza

    def initialize(nombre,raza)
        @nombre = nombre
        @raza = raza
    end

    def nombre=(nombre)  # variableconigual , modifica el mismo atributo que tiene igual nombre.
        @nombre = nombre
    end
end

perro = []
puts "Ingresar perritos al canil..."
puts "Cuantos va a ingresar ? "
ingreso_canil = gets.chomp.to_i

for i in 1..ingreso_canil do
    puts "Ingrese nombre del perro"
    nombre = gets.chomp
    puts "Ingrese su raza"
    raza = gets.chomp
    perro[i] = Perro.new(nombre,raza)
end
puts
puts "Listamos los perros que estan en el canil:"
puts "-----------------------------------"
for i in 1..ingreso_canil do
    puts "Perro: #{perro[i].nombre}"
    puts "Raza: #{perro[i].raza}"
    puts
end
