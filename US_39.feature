Feature: Visualización de logros sociales de otro jugador
    Como usuario que supera progresivamente su hikikomori
    Quiero mostrar mis logros sociales en mi perfil público
    Para reflejar mi crecimiento y motivar a otros

Scenario: Usuario visualiza logros de otro usuario
    Given que el usuario se encuentra en la [pantalla_perfil_otro_usuario]
    When el usuario le da clic al botón [boton_logros]
    Then el sistema mostrará los [logros_usuario_publico]

Example: INPUT
    boton_logros: Botón ubicado dentro del perfil que permite acceder a los logros de ese jugador.

Example: OUTPUT
    pantalla_perfil_otro_usuario: Vista del perfil público de otro jugador.
    logros_usuario_publico: Listado de badges animados como “primera conversación”, “chat grupal” y “evento presencial”.