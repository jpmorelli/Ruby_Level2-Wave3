class Item
  attr_reader :articulo, :precio
  
  def initialize(articulo,precio)
    @articulo=articulo
    @precio=precio
  end

end