Feature: Edicion de avatar del usuario
    Como usuario
    Quiero poder editar mi avatar personalizando su apariencia
    Para identificarme con mi personaje

Scenario: Edición exitosa del avatar
    Given que el [usuario_autenticada] está en el [apartado_perfil]
    When selecciona la opción [opcion_editar_avatar]
    And realiza cambios en la [personalizacion_avatar] con [opciones_validas]
    And guarda los cambios con la acción [click_boton_guardar_cambios]
    Then el sistema actualizará el avatar con la [nueva_apariencia_avatar]

Example: INPUT
    usuario_autenticada: Usuario que ha iniciado sesión en la plataforma.
    apartado_perfil: Sección del perfil del usuario donde puede editar su información.
    opcion_editar_avatar: Opción para editar el avatar del usuario.
    personalizacion_avatar: Elementos del avatar que se pueden personalizar, como ropa, accesorios, etc.
    opciones_validas: Opciones válidas para personalizar el avatar, como colores, estilos, etc.
    click_boton_guardar_cambios: Acción de hacer clic en el botón para guardar los cambios realizados.
Example: OUTPUT
    nueva_apariencia_avatar: Nueva apariencia del avatar después de aplicar los cambios.

Scenario: El usuario intenta salir sin guardar los cambios
    Given que el [usuario_autenticada] se encuentra en la [pantalla_personalizacion_avatar]
    And realiza cambios en la [personalizacion_avatar] con [opciones_validas]
    When intenta salir de la pantalla sin guardar los cambios
    And realiza la acción [click_boton_salir_sin_guardar]
    Then el sistema mostrará el [mensaje_confirmacion_salir_sin_guardar]

Example: INPUT
    usuario_autenticada: Usuario que ha iniciado sesión en la plataforma.
    pantalla_personalizacion_avatar: Pantalla donde el usuario puede personalizar su avatar.
    personalizacion_avatar: Elementos del avatar que se pueden personalizar, como ropa, accesorios, etc.
    opciones_validas: Opciones válidas para personalizar el avatar, como colores, estilos, etc.
    click_boton_salir_sin_guardar: Acción de hacer clic en el botón para salir sin guardar los cambios.
Example: OUTPUT
    mensaje_confirmacion_salir_sin_guardar: Mensaje que se muestra para confirmar si el usuario desea salir sin guardar los cambios.

    