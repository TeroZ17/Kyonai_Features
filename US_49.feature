Feature: Registro en torneos virtuales o presenciales
    Como usuario
    Quiero poder registrarme en los torneos virtuales o presenciales publicados en el apartado de noticias
    Para poder participar en actividades sociales

Scenario: Usuario se registra en un torneo
    Given que el usuario está en el [apartado_noticias] y visualiza un [torneo_publicado]
    When el usuario haga clic en el botón [boton_registrarme]
    Then el sistema confirmará el [registro_torneo]

Example: INPUT
    boton_registrarme: Botón que inicia el registro al torneo.

Example: OUTPUT
    registro_torneo: Confirmación de registro y validación de cupos.
    apartado_noticias: Sección donde se muestran eventos y torneos.
    torneo_publicado: Torneo visible en la lista de noticias.

---

Scenario: Recordatorio previo al inicio del torneo
    Given que el usuario ya se registró en un torneo_registrado
    When el usuario esté utilizando la aplicación
     And la [hora_torneo] se acerque
    Then el sistema mostrará un [recordatorio_torneo]

Example: INPUT

    hora_torneo: Hora programada del torneo.

Example: OUTPUT
    recordatorio_torneo: Notificación previa recordando el inicio del torneo.