Feature: Enviar accesorios del inventario de un jugador a un amigo
    Como usuario
    Quiero enviar objetos de mi inventario a un amigo como regalos
    Para que así consolidemos nuestra amistad

Scenario: El usuario selecciona un ítem a regalar
    Given que el usuario está en la pantalla_inventario
    When el usuario haga clic sobre un [item_inventario]
    Then el sistema mostrará la [pantalla_item_seleccionado]

Example: INPUT
    item_inventario: Objeto del inventario seleccionado por el usuario.

Example: OUTPUT
    pantalla_item_seleccionado: Vista con la información del ítem y opciones como “Regalar”.

---

Scenario: Usuario inicia el proceso para regalar el ítem
    Given que el usuario se encuentra en la pantalla_item_seleccionado
    When el usuario presione el botón [boton_regalar]
    Then el sistema mostrará la [lista_amigos]

Example: INPUT
    boton_regalar: Botón que inicia el proceso de regalar un objeto.

Example: OUTPUT
    lista_amigos: Listado de amigos disponibles para seleccionar como destinatarios.

---

Scenario: Confirmar el destinatario
    Given que el usuario ha presionado el [boton_regalar]
    When el usuario seleccione un [amigo_destinatario]
    Then el sistema mostrará el [mensaje_confirmacion_destinatario]

Example: INPUT
    boton_regalar: Acción que abre la lista de amigos.
    amigo_destinatario: Jugador seleccionado de la lista.

Example: OUTPUT
    mensaje_confirmacion_destinatario: Texto que confirma el destinatario y muestra el botón “Confirmar”.

---

Scenario: Confirmación del envío
    Given que el usuario ha seleccionado un [amigo destinatario]
    When el usuario presione el botón [boton_confirmar_envio]
    Then el sistema mostrará el [mensaje_envio_exitoso]

Example: INPUT
    amigo_destinatario: Jugador seleccionado de la lista.
    boton_confirmar_envio: Botón para finalizar el envío del regalo.

Example: OUTPUT
    mensaje_envio_exitoso: Notificación “El envío se realizó con éxito”.