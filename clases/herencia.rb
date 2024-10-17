#class ClasePadre

  # métodos ----

#end

#class ClaseHija < ClasePadre

  # métodos de clase padre +
  # métodos de la clase hija

#end

class Producto
  attr_accessor :nombre, :precio

  def initialize(nombre, precio)
    @nombre = nombre
    @precio = precio
  end

  def mostrar_detalles
    "Producto: #{@nombre}, Precio: #{@precio}"
  end
end

class Libro < Producto
  attr_accessor :autor

  def initialize(nombre, precio, autor)
    super(nombre, precio)
    @autor = autor
  end

  def mostrar_detalles
    "Libro: #{@nombre}, Autor: #{@autor}, Precio: #{@precio}"
  end
end

libro1 = Libro.new('Quijote', 'Miguel de Cervantes', 200000)
libro1.mostrar_detalles


class Vehiculo
  attr_accessor :marca, :modelo
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  def mostrar_detalles
    puts "Modelo: #{@modelo}, Marca #{@marca}"
  end
end

class Coche < Vehiculo
  attr_accessor :numero_puertas

  def initialize(marca, modelo, numero_puertas)
    super(marca, modelo)
    @numero_puertas = numero_puertas
  end

  def mostrar_detalles
    puts "#{super}, Numero de Puertas: #{@numero_puertas}"
  end
end

coche1 = Coche.new('Renault', 'Sandero', 4)
coche1.mostrar_detalles
