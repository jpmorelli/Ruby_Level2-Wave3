=begin
Modelar las clases necesarias para que un sistema de facturación cumpla con los siguientes requerimientos:
      * Modela factura debe tener numero de factura, fecha, total.
      * modela item debe tener descripcion y precio.     
=end

require_relative 'item.rb'
class Factura
    def initialize(fecha,numero_factura,total=0)
      @fecha=fecha
      @numero_factura=numero_factura
      @total=total
      @lista_items=[]
    end
    
    # Se debe poder agregar items a la factura.
    def agregar_item(item)
      @lista_items.push(item)
    end
    
    # Se debe poder eliminar items.
    def eliminar_item(articulo)
      @lista_items.delete_if {|item| item.articulo == articulo}
    end

    # Se debe poder obtener un array con la descripcion de cada item de la factura.
    def lista_items
      items_array=[]
      @lista_items.each do |item|
        items_array.push(item.articulo)
      end
      items_array
    end

    # Se debe poder calcular el total gastado hasta el momento.
    def total_parcial
      @total_parcial=0
      @lista_items.each do |item|
        @total_parcial=@total_parcial+item.precio
      end
      @total_parcial
    end
    # Se debe poder calcular el total a pagar.
    def total_factura
      @lista_items.each do |item|
        @total=@total+item.precio
      end
    end

    # Se debe poder imprimir el total de items de una factura.
    def emite_factura
      puts "#{@numero_factura} --- #{@fecha}"
      puts
      @lista_items.each do |item|
        puts "#{item.articulo} ......... #{item.precio}"
      end
      total_factura
      puts @total
    end
  
end

