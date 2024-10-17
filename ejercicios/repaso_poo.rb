# Clase Vuelo ---> Vuelo Nacional - Vuelo Internacional
# Vuelo Nacional ---> Si el pasajero es residente -10%
# Vuelos Internacionales ---> Extra del 15%


class Vuelo
  attr_reader :codigo, :destino, :precio_base

  def initialize(codigo, destino, precio_base)
    @codigo = codigo
    @destino = destino
    @precio_base = precio_base
  end

  def mostrar_informacion
    "El Vuelo #{@codigo} con destino a #{@destino}, tiene un precio base de: #{@precio_base}"
  end

  def precio_final
    precio_base + calcular_impuesto
  end

  private

  def calcular_impuesto
    @precio_base * 0.10
  end
end

class VueloNacional < Vuelo
  def initialize(codigo, destino, precio_base, es_residente)
    super(codigo, destino, precio_base)
    @es_residente = es_residente
  end

  def precio_final
    if @es_residente
      descuento = calcular_descuento_residente
      (precio_base - descuento).round(2)
    else
      super.round(2)
    end
  end

  private

  def calcular_descuento_residente
    @precio_base * 0.10
  end
end

class VueloInternacional < Vuelo
  def initialize(codigo, destino, precio_base)
    super(codigo, destino, precio_base)
  end

  def precio_final
    recargo = calcular_recargo_internacional
    (super + recargo).round(2)
  end

  private

  def calcular_recargo_internacional
    @precio_base * 0.15
  end
end

vuelo_nacional_residente = VueloNacional.new('A123', 'Bogotá', 100, true)
puts vuelo_nacional_residente.mostrar_informacion
puts "El precio final con su descuento de residente es de: #{vuelo_nacional_residente.precio_final}"

vuelo_nacional_no_residente = VueloNacional.new('B456', 'Bogotá', 150000, false)
puts vuelo_nacional_no_residente.mostrar_informacion
puts "El precio final de su vuelo es de: #{vuelo_nacional_no_residente.precio_final}"

vuelo_internacional = VueloInternacional.new('C789', 'Miami', 5000000)
puts vuelo_internacional.mostrar_informacion
puts "El precio final con tasas internacionales es de: #{vuelo_internacional.precio_final}"
