Feature: Mostrar los stickers en los chats
    Como usuario
    Quiero enviar stickers en mis chats
    Para comunicarme de una forma más expresiva e interactiva.

Scenario: Mostrar el cuadro de stickers al hacer clic en el icono
    Given que el [usuario_autenticado] ha entrado al [apartado_chat]
    And ha seleccionado un [chat_amigo_o_grupal]
    When el usuario hace clic en el [icono_stickers]
    Then la aplicación mostrará el [cuadro_stickers]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    apartado_chat: Es la parte de la plataforma donde los usuarios pueden ver sus chats.
    chat_amigo_o_grupal: Chat individual con un amigo o chat grupal con varios
    icono_stickers: Icono o botón que al hacer clic despliega el cuadro de stickers disponibles.

Example: OUTPUT
    cuadro_stickers: Ventana o panel que muestra los stickers que el usuario puede seleccionar para enviar en el chat.

Scenario: Seleccionar y enviar un sticker en el chat
    Given que el [usuario_autenticado] ha entrado al [apartado_chat]
    And ha seleccionado un [chat_amigo_o_grupal]
    And ha abierto el [cuadro_stickers]
    When el usuario selecciona un [sticker_especifico]
    Then el sistema enviará el sticker al chat seleccionado [proceso_envio_sticker]
    And el sticker se mostrará en la conversación [visualizacion_sticker_en_chat]

Example: INPUT
    usuario_autenticado: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    apartado_chat: Es la parte de la plataforma donde los usuarios pueden ver sus chats.
    chat_amigo_o_grupal: Chat individual con un amigo o chat grupal con varios
    cuadro_stickers: Ventana o panel que muestra los stickers que el usuario puede seleccionar para enviar en el chat.
    sticker_especifico: Sticker particular que el usuario elige para enviar en el chat.
Example: OUTPUT
    proceso_envio_sticker: Proceso en el que el sistema envía el sticker seleccionado al chat.
    visualizacion_sticker_en_chat: El sticker aparece en la conversación del chat para que ambos usuarios lo vean.


