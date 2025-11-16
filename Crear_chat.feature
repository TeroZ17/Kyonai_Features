Feature: Crear un chat grupal de amigos
    Como usuario
    Quiero crear un chat grupal con otros jugadores
    Para comunicarnos y formar equipos
Scenario: Crear un chat grupal exitosamente
    Given que el usuario esta en el [apartado_chat_amigos]
    When el usuario realiza la accion[click_Crear_chat_grupal]
    When el usuario rellena los campos obligatorios [campos_correctos]
    And agrega al menos dos integrantes [accion_seleccionar_amigos]
    And asigna un nombre al grupo [accion_asignar_nombre]
    Then el sistema creará el grupo [proceso_creacion_grupo]
    And mostrará el mensaje [mensaje_confirmacion_creacion_grupo]

Example: INPUT
    apartado_chat_amigos: Es la parte de la plataforma donde los usuarios pueden ver sus chats.
    click_Crear_chat_grupal: Acción de hacer clic en el botón "Crear chat grupal".
    campos_correctos: Información correcta y completa ingresada en los campos obligatorios.
    accion_seleccionar_amigos: Es la acción de seleccionar al menos dos amigos para agregar al chat grupal.
    accion_asignar_nombre: Es la acción de ingresar un nombre para el chat grupal.

Example: OUTPUT
    proceso_creacion_grupo: Proceso en el que el sistema crea el chat grupal.
    mensaje_confirmacion_creacion_grupo: Es un mensaje que muestra el sistama para confirmar que el chat grupal fue creado exitosamente.