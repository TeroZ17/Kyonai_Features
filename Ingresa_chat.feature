Feature: Ingresar al chat de un grupo
    Como usuario
    Quiero acceder a un chat con amigo
    Para conversar de manera simultánea con 2 o más y consolidar un equipo

Scenario: Ingresar al chat grupal exitosamente
    Given que el usuario esta en el [apartado_chat]
    When el usuario selecciona el chat grupal [accion_seleccionar_chat_grupal]
    Then el sistema mostrará la ventana de chat [proceso_mostrar_ventana_chat]
    And el usuario podrá enviar y recibir mensajes [funcionalidad_enviar_recibir_mensajes]

Example: INPUT
    apartado_chat: Es la sección de la plataforma donde los usuarios pueden observar sus chats sus amigos.
    accion_seleccionar_chat_grupal: Es la acción de seleccionar un chat grupal existente de la lista de chats.

Example: OUTPUT
    proceso_mostrar_ventana_chat: Proceso en el que el sistema carga y muestra la ventana del chat grupal seleccionado.
    funcionalidad_enviar_recibir_mensajes: Es la accion que permite enviar y recibir mensajes dentro del chat grupal.
