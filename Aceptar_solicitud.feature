Feature: Aceptar una solicitud de amistad
    Como usuario
    Quiero que se pueda aceptar una solicitud de amistad de manera simple y rápida 
    Para ahorrar tiempo en este proceso

Scenario: El usuario acepta una solicitud de amistad
    Given que el [usuario_autenticado] ha iniciado sesión
    And se encuentra en la [pagina_solicitudes_amistad]
    When realiza la acción [click_boton_aceptar_solicitud]
    Then la aplicación mostrará el [mensaje_confirmacion_amistad_aceptada]
    And el usuario aparecerá en la [lista_amigos_actualizada]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión en la plataforma.
    pagina_solicitudes_amistad: Página donde el usuario puede ver las solicitudes de amistad recibidas.
    click_boton_aceptar_solicitud: Es la acción para aceptar una solicitud.

Example: OUTPUT
    mensaje_confirmacion_amistad_aceptada: Mensaje que confirma que la solicitud de amistad ha sido aceptada exitosamente.
    lista_amigos_actualizada: actualizacion de la lista para que ahora incluya el nuevo amigo aceptado.