Feature: Enviar solicitud de amistad
    Como usuario
    Quiero ser capaz de enviar una solicitud de amistad teniendo el nombre del jugador o su codigo
    Para que pueda empezar una nueva amistad con él o ella

Scenario: Enviar solicitud de amistad exitosamente
    Given que el [usuario_autenticada] está en la [pantalla_amigos]
    When ingresa el [nombre_jugador_o_codigo] en el campo de búsqueda
    And realiza la acción [click_boton_enviar_solicitud]
    Then el sistema mostrará el [mensaje_solicitud_enviada]
Example: INPUT
    usuario_autenticada: Usuario que ha iniciado sesión en la plataforma.
    pantalla_amigos: Pantalla donde el usuario puede gestionar sus amigos.
    nombre_jugador_o_codigo: Nombre o código del jugador al que se desea enviar la solicitud
    click_boton_enviar_solicitud: Acción de hacer clic en el botón "Enviar solicitud".

Example: OUTPUT
    mensaje_solicitud_enviada: Mensaje que confirma que la solicitud de amistad ha sido enviada exitosamente.

Scenario: Enviar solicitud de amistad a un usuario inexistente
    Given que el [usuario_autenticada] está en la [pantalla_amigos]
    When ingresa el [nombre_jugador_o_codigo_inexistente] en el campo de búsqueda
    And realiza la acción [click_boton_enviar_solicitud]
    Then el sistema mostrará el [mensaje_usuario_inexistente]

Example: INPUT
    nombre_jugador_o_codigo_inexistente: Nombre o código que no corresponde a ningún jugador registrado.

Example: OUTPUT
    mensaje_usuario_inexistente: Mensaje que indica que el usuario no existe o no se pudo encontrar.


    