Feature: Sistema de pausas programadas para evitar sobreestimulación
    Como usuario con tendencia al agotamiento social
    Quiero que el sistema me sugiera pausas regulares durante sesiones largas
    Para mantener un equilibrio saludable

Scenario: Aparición de la notificación de pausa
    Given que el usuario se encuentra en [cualquier_pantalla]
    And el usuario ha utilizado la aplicación por [tiempo_uso_40min]
    When el usuario realiza un [clic_o_movimiento]
    Then el sistema mostrará la notificación [recordatorio_pausa]

Example: INPUT
    tiempo_uso_40min: Registro de 40 minutos de actividad continua.
    clic_o_movimiento: Acción del usuario dentro de la aplicación.

Example: OUTPUT
    recordatorio_pausa: Mensaje emergente con el recordatorio de uso y sugerencia de tomar una pausa.
    cualquier_pantalla: Cualquier vista dentro de la aplicación.

---

Scenario: Aplazar la notificación de pausa
    Given que el sistema ha mostrado el [recordatorio_pausa]
    And el usuario desea seguir usando la aplicación continuar_uso
    When el usuario le da clic al botón [posponer_10min]
    Then el sistema cerrará la notificación [notificacion_cerrada]

Example: INPUT
    posponer_10min: Botón “10min más” para aplazar la pausa.

Example: OUTPUT
    recordatorio_pausa: Notificación de pausa previamente mostrada.
    notificacion_cerrada: La notificación se cierra y la pausa se aplaza hasta por 10 minutos.