class Usuario
  attr_reader :nombre, :email

  def initialize (nombre, email, contraseña)
    @nombre = nombre
    @email = email
    @contraseña = contraseña
  end

  def actulizar_email(nuevo_email)
    if validar_email(nuevo_email)
      @email = nuevo_email
      puts 'Email creado correctamente'
    else
      puts 'Formato Inválido'
    end
  end

  def actulizar_contraseña(nueva_contraseña)
    if validar_contraseña(nueva_contraseña)
      @contraseña = nueva_contraseña
      puts 'Contraseña creada Exitosamente'
    else
      puts 'Formato Inválido'
    end
  end

  private

  def validar_email(email)
    email.include?("@")
  end

  def validar_contraseña(contraseña)
    contraseña.length >= 6
  end
end

usuario1 = Usuario.new('Juan', "juan@example.com", "123456")

usuario1.actulizar_email("nuevojuan.com")
usuario1.actulizar_email("nuevo@juan.com")

usuario1.actulizar_contraseña("0987")
usuario1.actulizar_contraseña("098765")
