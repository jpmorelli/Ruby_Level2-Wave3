# Teniendo un array de numeros enteros. Devolver un hash con las siguientes keys:
# 
# 1) 'maximo'
# 2) 'minimo'
# 3) 'average'
# 4) 'numeros_mayores_al_promedio' --> Array


h={}
mi_array = [3,6,4,8,9]
nuevo_array = []
#1)
h[:maximo] = mi_array.max
#2)
h[:minimo] = mi_array.min
#3)
h[:average] = mi_array.sum / mi_array.length
#4)
h[:average] = mi_array.sum / mi_array.length
 mi_array.each do |n|
  if h[:average] <= n 
    h[:plus_average] = nuevo_array.push(n)
  end
end
