Feature: Acceso al apartado de nuevas amistades 
    Como usuario
    Quiero que haya un apartado que almacene las solicitudes de amistades 
    Para tener estas mismas de manera organiza y decidir si aceptar o no con una mayor fluidez. 

  Scenario: Acceso al apartado de Nuevas Amistades
    Given que el [usuario_autenticado] ha iniciado sesión
    And se encuentra en la [pagina_principal]
    When hace clic en el [subtitulo_nuevos_amigos]
    Then la aplicación mostrará el [apartado_nuevas_amistades]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión en la plataforma.
    pagina_principal: Página principal de la plataforma donde el usuario puede acceder a diferentes secciones.
    subtitulo_nuevos_amigos: Es el enlace o botón que lleva al apartado de nuevas amistades.
Example: OUTPUT
    apartado_nuevas_amistades: Sección donde el usuario puede ver y gestionar las solicitudes de amistad recibidas.