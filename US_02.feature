Feature: Ingresar al chat de un amigo
    Como usuario
    Quiero que la función del chat permita tener un chat distinto con cada amigo
    Para asi conversar de manera más privada y en confianza

Scenario: Ingresar al chat de un amigo exitosamente
    Given que el usuario se encuentre en el [apartado_chat_amigos]
    When el usuario selecciona a un amigo de la lista [accion_seleccionar_amigo]
    Then el sistema mostrará la ventana de chat con ese amigo [proceso_mostrar_ventana_chat]

Example: INPUT
    apartado_chat_amigos: Es la parte de la plataforma donde los usuarios pueden ver sus chats
    accion_seleccionar_amigo: Es la acción de hacer clic en el nombre de un amigo en la lista de amigos para abrir el chat con él.
Example: OUTPUT
    proceso_mostrar_ventana_chat: Proceso en el que el sistema carga y muestra la ventana de chat específica para el amigo seleccionado.

Scenario: Intentar ingresar al chat de un amigo que no está en la lista
    Given que el usuario se encuentre en el [apartado_chat_amigos]
    When el usuario intenta seleccionar a un amigo que no está en la lista [accion_seleccionar_amigo_no_lista]
    Then el sistema mostrará el mensaje de error [mensaje_error_amigo_no_en_lista]

Example: INPUT
    apartado_chat_amigos: Es la parte de la plataforma donde los usuarios pueden ver sus chats
    accion_seleccionar_amigo_no_lista: Es la acción de intentar hacer clic en el nombre de un amigo que no está en la lista de amigos. 
Example: OUTPUT
    mensaje_error_amigo_no_en_lista: Mensaje que indica que el amigo seleccionado no se encuentra en la lista de amigos y no se puede abrir el chat.

