tareas = []

def mostrar_tareas(tareas)
  if tareas.empty?
    puts 'No hay tareas'
  else
    puts 'Tareas:'
    tareas.each_with_index do |tarea, index|
      puts "#{index + 1}, #{tarea[:descripcion]} - #{tarea[:completada] ? 'Completada' : 'Pendiente'}"
    end
  end
end

loop do
  puts 'Selecione una Opción '
  puts '1. Agregar'
  puts '2. Mostrar'
  puts '3. Completar '
  puts '4. Eliminar'
  puts '5. Salir'

  opcion = gets.chomp.to_i

  case opcion
  when 1
    puts 'Ingrese la descripción de la tarea:'
    descripcion = gets.chomp
    tareas << {descripcion: descripcion, completada: false}
    puts 'Tarea agregada'

  when 2
    mostrar_tareas(tareas)

  when 3
    puts 'Ingresa el número de la tarea a completar: '
    numero_tarea = gets.chomp.to_i
    if numero_tarea.between?(1, tareas.size)
      tareas[numero_tarea - 1][completada] = true
      puts 'Tarea completada'
    else
      puts 'Tarea no encontrada'
    end
  when 4
    puts 'Ingresa el número de la tarea a eliminar: '
    numero_tarea = gets.chomp.to_i
    if numero_tarea.between?(1, tareas.size)
      tareas.delete_at(numero_tarea - 1)
      puts 'Tarea Eliminada'
    else
      puts 'Tarea no encontrada'
    end
  when 5
    puts 'Saliendo .........'
    break

  else
    puts 'Opción no Válida, Intenta otra vez'
  end
end
