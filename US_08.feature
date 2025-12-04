Feature: Personalización del nickname (nombre de usuario)
    Como usuario
    Quiero poder cambiar de nombre o nickname dentro del apartado de personalización del perfil 
    Para evitar usar mi nombre real 

Scenario: Habilitar edición del nickname
    Given que el [usuario_autenticado] está en el [apartado_personalizacion_perfil]
    When el usuario realiza la acción [click_boton_icono_lapiz]
    Then la aplicación habilitará el [textbox_nickname_editable]
    And el usuario podrá modificar el [nickname]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    apartado_personalizacion_perfil: Sección dentro del perfil del usuario donde puede personalizar su información.
    click_boton_icono_lapiz: Acción de hacer clic en el ícono de lápiz para editar el nickname.
Example: OUTPUT
    textbox_nickname_editable: Campo de texto que permite al usuario ingresar un nuevo nickname.

