def saludar (nombre)
  puts "Hola #{nombre}"
end


def sumar_numeros(array)
  suma = 0
  array.each do |num|
    suma += num
  end
  return suma
end

numeros = [1, 2, 3, 4, 5, 6]
resultado = sumar_numeros(numeros)
puts "La suma del array es: #{resultado}"
