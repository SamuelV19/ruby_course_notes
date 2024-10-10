class Banco
  def initialize (nombre, numero_cuenta, saldo_inicial = 0)
    @nombre = nombre
    @numero_cuenta = numero_cuenta
    @saldo = saldo_inicial
  end

  def depositar(cantidad)
    @saldo += cantidad
    puts "Se han depositado #{cantidad}, tienes #{@saldo}"
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

  def transferir(cantidad, otra_cuenta)
    if cantidad > @saldo
      puts 'fondos insuficientes'
    else
      otra_cuenta.depositar(cantidad)
      puts "#{@nombre} ha transferido #{cantidad} a la cuenta #{otra_cuenta}, saldo actual #{@saldo}"
    end
  end

  def nombre
    @nombre
  end
end

cuenta1 = Banco.new("Samuel", 12345678, 100000)
cuenta2 = Banco.new("Simon", 87654321, 150000)


cuenta1.depositar(500)
cuenta2.retirar(3000)
