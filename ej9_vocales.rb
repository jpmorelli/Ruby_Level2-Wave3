# 3 - Crear un metodo al cual se le pase una frase y devuela un hash con las vocales incluidas en dicha frase y la frecuencia de # aparicion de cada una de ellas.

class Vocales
  
  def initialize(input)
    @input = input
  end

  def caracteres
    chars = @input.chars
  end

  def vocales
    a_total = @input.count "a"
    e_total = @input.count "e"
    i_total = @input.count "i"
    o_total = @input.count "o"
    u_total = @input.count "u"
    @cuenta_vocales = {:a => a_total, :e => e_total, :i => i_total, :o => o_total, :u => u_total}
  end

end

frase = Vocales.new('esta es mi frase para contar')
frase.vocales

### Una solucion mucho mas dinamica desde donde se podría agregar mas opciones de letras a buscar

class Frase
  def initialize(frase)
    @frase=frase
  end

  def contar_vocales
    my_hash={'a'=>0,'e'=>0,'i'=>0,'o'=>0,'u'=>0}
    @frase.downcase.each_char{|caracter| my_hash[caracter]+=1 if my_hash.keys.include?(caracter)}
    my_hash
  end

end

mi_frase=Frase.new("hOy es Un gran dia de PRUEBAS De voCALes y MAYUSculas")
mi_frase.contar_vocales