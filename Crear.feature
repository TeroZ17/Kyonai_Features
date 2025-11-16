Feature: Crear una cuenta en la plataforma como usuario nuevo
  Como usuario nuevo
  Quiero registrarme facilmente
  Para poder acceder al mundo virtual y sus funciones

Scenario: Registro de usuario nuevo en la plataforma
      Given que el [usuario_nuevo]se encuentra en la [pagina_registro]
      And visualiza el [formulario_registro]
      When completa correctamente todos los campos[datos_validos]
      And realiza la acción [click_boton_registrarse]
      Then el sistema deberá creat la cuenta [proceso_creacion_cuenta]
      And se visualiza el [mensaje_confirmacion_registro]

Example: INPUT 
    usuario_nuevo: Usuario que no tiene una cuenta en la plataforma.
    pagina_registro: Página web donde los usuarios pueden registrarse.
    formulario_registro: Formulario que contiene los campos necesarios para el registro.
    datos_validos: Información correcta y completa ingresada en el formulario.
    click_boton_registrarse: Acción de hacer clic en el botón "Registrarse".

Example: OUTPUT
    proceso_creacion_cuenta: Proceso en el que el sistema guarda la información del nuevo usuario y crea su cuenta.
    mensaje_confirmacion_registro: Mensaje que confirma que el registro fue exitoso.

Scenario: Campos incompletos
    Given que el [usuario_nuevo]se encuentra en la [pantalla_registro]
    When completa solo algunos campos del [formulario_registro]
    And realiza la accion [click_boton_ingresarboton_registrarse]
    Then el sistema mostrará el [mensaje_error_campos_incompletos]
    And no se creará la cuenta del usuario

Example: INPUT
    usuario_nuevo: Usuario que no tiene una cuenta en la plataforma.
    pantalla_registro: Página web donde los usuarios pueden registrarse.
    formulario_registro: Formulario que contiene los campos necesarios para el registro.
    click_boton_registrarse: Acción de hacer clic en el botón "Registrarse".

Example: OUTPUT
    mensaje_error_campos_incompletos: Mensaje que indica que todos los campos son obligatorios y deben ser completados.

Scenario: Usuario duplicado
    Given que el [usuario_nuevo]se encuentra en la [pagina_registro]
    When completa el formulario con [datos_usuario_existente]
    And realiza la acción [click_boton_registrarse]
    Then el sistema mostrará el [mensaje_error_usuario_duplicado]
    And no se creará la cuenta del usuario

Example: INPUT
    usuario_nuevo: Usuario que no tiene una cuenta en la plataforma.
    pagina_registro: Página web donde los usuarios pueden registrarse.
    datos_usuario_existente: Información que ya está registrada en el sistema.
    click_boton_registrarse: Acción de hacer clic en el botón "Registrarse".

Example: OUTPUT
    mensaje_error_usuario_duplicado: Mensaje que indica que el usuario ya existe y no se puede crear una cuenta duplicada.

    