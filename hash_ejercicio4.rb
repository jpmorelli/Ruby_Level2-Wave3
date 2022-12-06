# 4 - Teniendo 2 arrays de igual tamaño, crear un hash donde los valores de un array sean las keys y el otro array sean los valores.

array1=["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"]
array2=[31,29,31,30,31,30,31,31,30,31,30,31]
hash=array1.zip(array2).to_h

# vector_1.each_with_index {|num, index| mi_hash[num]=vector_2[index]}

vector_1=["a","b","c","d"]
vector_2=[1,2,3,4]
mi_hash={}
vector_1.each_with_index {|num, index| mi_hash[num]=vector_2[index]}
mi_hash

#### Tambien se podría utilizar "shift" lo contrario a "Pop" de un array
