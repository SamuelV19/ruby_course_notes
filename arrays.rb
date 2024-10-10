frutas = ["manzanas", "banano", "pera", "uva"]

# .push ó .append
# .pop
# .shift
# .unshift
# .each

frutas[2]
frutas[-1]


numeros = [1, 2, 3, 4, 5]
puts numeros
numeros.push(6,8)
numeros.unshift(0)

puts numeros



numeros.each do |num|
  puts num * 2
end
