Feature: Personalización de la foto de perfil
    Como usuario
    Quiero poder elegir una imagen 
    Para usarla en mi perfil y así sentirme cómodo con mi usuario. 

Scenario: Subir imagen desde el explorador de archivos
    Given que el [usuario_autenticado] está en la [pantalla_personalizacion_perfil]
    When el usuario realiza la acción[clic_boton_subir_imagen]
    Then la aplicación abrirá el [explorador_archivos_sistema]
    And permitirá seleccionar una imagen válida

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    pantalla_personalizacion_perfil: Pantalla donde el usuario puede personalizar su perfil, incluyendo la foto de perfil.
    boton_subir_imagen: Botón que permite al usuario iniciar el proceso de subir una imagen para su foto de perfil.
Example: OUTPUT
    explorador_archivos_sistema: Ventana del sistema operativo que permite al usuario navegar por sus archivos para seleccionar una imagen.

  Scenario: Mostrar vista previa de la imagen seleccionada
    Given que el [usuario_autenticado] ha seleccionado una [imagen_perfil]
    When hace clic en el botón [accion_abrir_archivo] del explorador
    Then la aplicación mostrará la [vista_previa_imagen] en el área de previsualización

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    imagen_perfil: Imagen que el usuario ha seleccionado para su foto de perfil.
    accion_abrir_archivo: Acción de hacer clic en el botón para abrir un archivo en el explorador de archivos.
Example: OUTPUT
    vista_previa_imagen: Área en la pantalla de personalización de perfil donde se muestra