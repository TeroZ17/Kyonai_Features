Feature: Perfil de usuario
    Como usuario
    Quiero que haya un apartado en donde registrar información relacionada a mi perfil “gamer” 
    Para evitar utilizar mi nombre real frente a otros y sentirme más seguro. 

Scenario: Acceso al perfil desde la Página Principal
    Given que el [usuario_autenticado] se encuentra en la [pagina_principal]
    When el usuario realiza la acción [click_icono_perfil]
    Then el sistema mostrará la [pagina_perfil_usuario]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    pagina_principal: Página principal de la plataforma donde el usuario puede acceder a diferentes secciones.
    click_icono_perfil: Acción de hacer clic en el ícono o enlace que lleva al perfil de usuario.
Example: OUTPUT
    pagina_perfil_usuario: Página donde el usuario puede ver y editar la información de su perfil gamer.

Scenario: Editar información del perfil de usuario
    Given que el [usuario_autenticado] se encuentra en la [pagina_perfil_usuario]
    When el usuario realiza la acción [click_boton_editar_perfil]
    And completa los campos con [nueva_informacion_perfil]
    And realiza la acción [click_boton_guardar_cambios]
    Then el sistema actualizará la [informacion_perfil_usuario]
    And mostrará el [mensaje_confirmacion_actualizacion]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    pagina_perfil_usuario: Página donde el usuario puede ver y editar la información de su perfil gamer.
    click_boton_editar_perfil: Acción de hacer clic en el botón para editar el perfil de usuario.
    nueva_informacion_perfil: Nueva información que el usuario desea agregar o modificar en su perfil gamer.
    click_boton_guardar_cambios: Acción de hacer clic en el botón para guardar los cambios realizados en el perfil.
Example: OUTPUT
    informacion_perfil_usuario: Datos actualizados en el perfil gamer del usuario.
    mensaje_confirmacion_actualizacion: Mensaje que confirma que la información del perfil ha sido actualizada exitosamente.