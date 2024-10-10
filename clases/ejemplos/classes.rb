# Es un molde en el cual la persona  puede agrupar código

class Perro
  def initialize(nombre, raza, numero_patas)
    @nombre = nombre
    @raza = raza
    @numero_patas = numero_patas
  end

  def mostrar_info
    puts "El perro se llama #{@nombre} y es un #{@raza}"
  end

  def ladrar
    puts 'Woof'
  end

  def contar_patas
    puts "El perro tiene #{@numero_patas} patas"
  end
end

mi_perro = Perro.new("Firulais", "Pincher", 4)

mi_perro.mostrar_info
mi_perro.ladrar
mi_perro.contar_patas
