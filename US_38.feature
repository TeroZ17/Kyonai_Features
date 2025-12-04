Feature: Bloqueo de pantalla al superar el tiempo de uso
    Como usuario
    Quiero que la aplicación limite un uso constante
    Para evitar pasar demasiado tiempo dentro de la aplicación

Scenario: La aplicación se bloquea por exceder el tiempo de uso
    Given que el usuario ha utilizado la aplicación por tiempo_uso_42min
    When el usuario intenta realizar una [accion_usuario]
    Then la aplicación mostrará la pantalla [pantalla_bloqueo]

Example: INPUT
    accion_usuario: Clic, desplazamiento o cualquier interacción con la interfaz.

Example: OUTPUT
    pantalla_bloqueo: Vista dedicada al bloqueo del sistema por tiempo excedido.

---

Scenario: Cierre de la pantalla de “Bloqueo”
    Given que el sistema mostró la [pantalla_bloqueo]
    And el usuario estuvo fuera de la aplicación por tiempo_fuera_20min
    When el usuario ingresa nuevamente a la aplicación [reingreso_app]
    Then el sistema inicializará el juego correctamente [inicio_correcto]

Example: INPUT
    reingreso_app: El usuario vuelve a abrir la aplicación desde el inicio.

Example: OUTPUT
    pantalla_bloqueo: Pantalla mostrada cuando el usuario supera el límite de tiempo.
    inicio_correcto: El juego carga normalmente y permite continuar.