Feature: Iniciar sesión en la plataforma
    Como usuario nuevo o existente
    Quiero Iniciar sesión fácilmente
    Para acceder al mundo virtual y sus funciones

Scenario: Inicio sesión existoso en la plataforma
    Given que el [usuario_registrado] ya tiene una cuenta en la plataforma
    And realiza la accion [click_boton_ingresar]
    Then el sistema mostrará la [pantalla_inicio_sesion]
    When completa correctamente los campos con [informacion_valida]
    And realiza la acción [click_boton_iniciar_sesion]
    Then el sistema validará las credenciales [proceso_validacion_credenciales]
    And mostrará [mensaje_bienvenida]

Example: INPUT
    usuario_registrado: Usuario que ya tiene una cuenta ya existente.
    click_boton_ingresar: Acción de hacer clic en el botón "Ingresar".
    pantalla_inicio_sesion: Pantalla donde el usuario puede ingresar sus credenciales.
    informacion_valida: Datos correctos del usuario, como nombre de usuario y contraseña.
    click_boton_iniciar_sesion: Acción de hacer clic en el botón "Iniciar sesión".

Example: OUTPUT
    proceso_creacion_cuenta: Proceso en el que el sistema verifica las credenciales del usuario.
    mensaje_bienvenida: Mensaje que da la bienvenida al usuario tras un inicio de sesión

Scenario: Credenciales incorrectas
    Given que el [usuario_registrado] ya tiene una cuenta en la plataforma
    And se encuentra en la [pantalla_inicio_sesion]
    When completa los campos con [informacion_incorrecta]
    And realiza la acción [click_boton_iniciar_sesion]
    Then el sistema validará las credenciales [proceso_validacion_credenciales]
    And mostrará [mensaje_error_credenciales]

Example: INPUT
    usuario_registrado: Usuario que ya tiene una cuenta ya existente.
    pantalla_inicio_sesion: Pantalla donde el usuario puede ingresar sus credenciales.
    informacion_incorrecta: Datos incorrectos del usuario, como nombre de usuario o contraseña erróneos.
    click_boton_iniciar_sesion: Acción de hacer clic en el botón "Iniciar sesión".

Example: OUTPUT
    proceso_validacion_credenciales: Proceso en el que el sistema verifica las credenciales del usuario.
    mensaje_error_credenciales: Mensaje que indica que las credenciales ingresadas son incorrectas.

Scenario: Campos vacíos en el inicio de sesión
    Given que el [usuario_registrado] intenta inciar sesión desde la [pantalla_inicio_sesion]
    When deja los campos vacíos en el [formulario_inicio_sesion]
    And realiza la acción [click_boton_iniciar_sesion]
    Then el sistema mostrará el [mensaje_error_campos_vacios]

Example: INPUT
    usuario_registrado: Usuario que ya tiene una cuenta ya existente.
    pantalla_inicio_sesion: Pantalla donde el usuario puede ingresar sus credenciales.
    formulario_inicio_sesion: Formulario que contiene los campos para el inicio de sesión.
    click_boton_iniciar_sesion: Acción de hacer clic en el botón "Iniciar sesión".

Example: OUTPUT
    mensaje_error_campos_vacios: Mensaje que indica que los campos obligatorios no pueden estar vacíos.

    