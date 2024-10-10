numero_secreto = rand(1..10)
intentos = 0

puts "Juego de adivinanza, pulsa salir para terminar"

while true
  entrada = gets.chomp
  break if entrada.downcase == 'salir'

  suposicion = entrada.to_i
  intentos += 1

  if suposicion < numero_secreto
    puts 'Demasiado bajo'
  elsif suposicion > numero_secreto
    puts 'Demasiado Alto'
  else
    puts 'Correcto!!!'
    break
  end
end
