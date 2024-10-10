# Ciclos: for , while , until

for i in 1..5 do
  puts "Numero #{i}"
end

contador = 1
while contador <=5
  puts "Numero #{contador}"
  contador += 1
end

# .each
# .times

fibonacci = [0, 1]

(2..9).each do |i|
  siguiente = fibonacci[i-1] + fibonacci[i-2]
  fibonacci.push(siguiente)
end

puts "Serie de Fibonacci: #{fibonacci.join(' , ')}"
