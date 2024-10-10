# if ---> si
#  elsif --- > si no, repetidamente
#  else --- > si no, un solo uso
#
# a == b ---> igualdad
# a != b ---> desigualdad
# a > b ---> mayor que
# a < b ---> menor que
# a >= b ---> mayor o igual
# a <= b ---> menor o igual

# && , and ---> Y, Solo es true si todas las condiciones se cumplen
# ||, or  ---> Ó, Da true si UNA, de las condiciones se cumple
# !, ---> Negación

puts 'Ingresa tu edad'
edad = gets.chomp.to_i

if edad >= 18
  puts 'Eres un adulto'
elsif edad >= 13
  puts 'Eres un Adolescente'
else
  puts 'Eres un niño '
end

#Otro condicional:  case , when

puts 'Cual es tu calificación?'
calificacion = gets.chomp.to_i

case calificacion
when 1
  puts 'Mala calific/'
when 2
  puts 'Calificación Mala'
when 3
  puts 'Calificqacion aceptable'
when 4
  puts 'Superior'
when 5
  puts 'Muy Buena'
end
