# 1 - Ingresar n números en un array y mostrar el mayor y el menor numero.
# 
numeros = [3,8,5,7,9]

num_ordenados = numeros.sort
last = numeros.length-1
puts " El menor es: #{num_ordenados[0]}"
puts " El mayor es: #{num_ordenados[last]}"



# 2 - Ingresar n números en un array y mostrar la suma de sus elementos.
# 
def sumar
    suma=0
    @mi_array.each do |ma|
        suma=suma+ma
    end
    puts "La suma es #{suma}"
​
end


# 3 - Ingresar n números en un array, decir cuales son pares y cuales impares.
#
pares=[]
impares=[]
numeros.each do |i|
   if i.even?
       pares.push i
   else
       impares.push i
   end
end