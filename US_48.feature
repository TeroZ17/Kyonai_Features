Feature: Notificación de conexión de amigos
    Como usuario que ya cuenta con amistades en la app
    Quiero recibir una notificación cuando un amigo se conecte al juego
    Para poder interactuar con él si lo deseo

Scenario: Usuario visualiza notificación
    Given que el usuario se encuentra navegando en la aplicación
    When un [amigo_conectado] ingresa al programa
    Then el sistema mostrará la [notificacion_conexion]

Example: INPUT
    amigo_conectado: Amigo del usuario que acaba de iniciar sesión en la app.

Example: OUTPUT
    notificacion_conexion: Notificación emergente indicando que el amigo se ha conectado.

---

Scenario: Usuario interactúa con la notificación
    Given que el usuario se encuentra visualizando la [notificacion_conexion]
    When el usuario presione el [icono_desplegable]
    Then el sistema mostrará las opciones [boton_ver_perfil] y [boton_chat_texto]

Example: INPUT
    icono_desplegable: Icono que despliega acciones adicionales.

Example: OUTPUT
    boton_ver_perfil: Opción para acceder al perfil del amigo.
    boton_chat_texto: Opción para abrir un chat con el amigo.
    notificacion_conexion: Notificación visible en la pantalla.