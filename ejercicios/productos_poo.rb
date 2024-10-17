class Producto
  def initialize(nombre_producto, precio, cantidad_en_inventario)
    @nombre_producto = nombre_producto
    @precio = precio
    @cantidad_en_inventario = cantidad_en_inventario
  end


  def vender(cantidad)
    if cantidad > @cantidad_en_inventario
      puts 'No hay stock'
    else
      @cantidad_en_inventario -= cantidad
      puts "Se han vendido #{cantidad} unidades. Quedan #{@cantidad_en_inventario} en stock"
    end
  end

  def reponer(cantidad)
    @cantidad_en_inventario += cantidad
    puts "Se han repuesto #{cantidad} unidades. Quedan #{@cantidad_en_inventario} en stock"
  end

  def mostrar_inventario
    puts "En el inventario quedan #{@cantidad_en_inventario} unidades"
  end

  def precio_total(cantidad)
    total = cantidad * @precio
    puts "El precio por #{cantidad} unidades es de: $#{total}"
  end
end

#nombre_objeto = Clase.new(parametros)

producto1 = Producto.new('Manzanas', 2500, 10000)

producto1.vender(1000)
producto1.precio_total(1000)

