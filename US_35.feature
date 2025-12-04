Feature: Visualización de misiones cooperativas
    Como jugador en riesgo de hikikomori que busca mejorar sus habilidades sociales
    Quiero participar en desafíos colaborativos junto a otros jugadores
    Para fortalecer mis relaciones dentro de la comunidad y trabajar en equipo

Scenario: Acceso a misiones y eventos
    Given que el usuario se encuentra en la [interfaz_usuario]
    When el usuario le da clic al botón [misiones_eventos]
    Then el sistema mostrará la pantalla [pantalla_misiones_eventos]

Example: INPUT
    misiones_eventos: Botón que permite acceder al apartado “Misiones y Eventos”.

Example: OUTPUT
    pantalla_misiones_eventos: Vista donde se muestran las misiones y eventos disponibles.
    interfaz_usuario: Pantalla principal donde se visualizan los botones del juego.

---

Scenario: Acceso a las misiones cooperativas
    Given que el usuario se encuentra en la [pantalla_misiones_eventos]
    When el usuario le da clic al botón [cooperativas]
    Then el sistema mostrará la pantalla [pantalla_misiones_cooperativas]

Example: INPUT
    cooperativas: Botón del mini menú lateral izquierdo para acceder a misiones cooperativas.

Example: OUTPUT
    pantalla_misiones_cooperativas: Vista donde se muestran los desafíos colaborativos con su descripción, requisitos y recompensas.
    pantalla_misiones_eventos: Sección donde se muestran misiones y eventos.