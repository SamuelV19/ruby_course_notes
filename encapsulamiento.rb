# 3 métodos attr
# 1. attr_reader ---> Información Solo pueda ser Vista
# 2. attr_writer ----> Escribir
# 2. att_accesor ----> Ver Y Modificar

class CuentaBancaria
  attr_reader :titular # Lectura
  attr_accessor :saldo # Lectura y Escritura

  def initialize (titular, saldo_inicial, contraseña)
    @titular = titular
    @saldo = saldo_inicial
    @contraseña = contraseña
  end

  def depositar(cantidad, contraseña)
    if verificar_contraseña(contraseña)
      @saldo += cantidad
      puts "Se han depositado #{cantidad}, tienes #{@saldo}"
    else
      puts "Contraseña Inconrrecta"
    end
  end

  def retirar(cantidad)
    if cantidad > @saldo
      puts 'fondos insuficientes'
    else
      @saldo -= cantidad
      puts "Se han retirado #{cantidad}, tienes #{@saldo}"
    end
  end

  def mostar_saldo
    puts "El saldo de #{@nombre} es de #{@saldo}"
  end

  private

  def actualizar_saldo(nuevo_saldo)
    @saldo = nuevo_saldo
  end

  def verificar_contraseña(contraseña)
    @contraseña == contraseña
  end

end

cuenta4 = CuentaBancaria.new('Samuel', 100000, "12345")


titular_nuevo = CuentaBancaria.titular("Jose")
