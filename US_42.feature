Feature: Descubrimiento de amigos por hobby en el mundo virtual
    Como usuario
    Quiero visualizar avatares cercanos con hobbys en común
    Para facilitar el contacto inicial y encontrar afinidades dentro del mundo virtual

Scenario: Usuario se percata de algo en común con otro jugador
    Given que el usuario tiene la etiqueta hobby_usuario y está explorando el mapa_virtual
    When otro jugador con la etiqueta [hobby_coincidente] se acerca a menos de 10 metros
    Then el sistema mostrará el icono [icono_afinidad] sobre el avatar del otro jugador

Example: INPUT
    hobby_coincidente: Etiqueta compartida entre ambos jugadores.

Example: OUTPUT
    icono_afinidad_visible: Icono mostrado sobre el avatar del jugador cercano indicando afinidad.

---

Scenario: Usuario envía solicitud de amistad por interés en común
    Given que el usuario ve el [icono_afinidad_visible] sobre otro avatar
    When el usuario hace clic sobre el avatar y selecciona [ver_afinidad]
    Then el sistema mostrará la etiqueta [hobby_compartido] y la opción [enviar_solicitud_amistad]

Example: INPUT
    ver_afinidad: Opción seleccionada por el usuario para ver más detalles.

Example: OUTPUT
    icono_afinidad_visible: Indicador visual de hobby compartido.
    solicitud_amistad_disponible: Opción habilitada para enviar la solicitud.
    afinidad_mostrada: Etiqueta visible indicando el hobby en común.
    hobby_compartido: Hobby coincidente entre ambos usuarios.