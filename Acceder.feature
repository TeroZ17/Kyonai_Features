Feature: Acceder al videojuego o mundo virtual 2D
Como usuario
Quiero visualizar un botón visible en la página principal
Para poder ingrese y jugar dentro del mundo virtual 2D

Scenario: Acceso al juego desde la pagina principal
    Given que el [usuario_autenticada]se encuentra en la [landig_page] 
    When realiza la acción [click_boton_jugar_ahora]
    Then la aplicación mostrará la [pantalla_carga_juego]
    And se visualiza el [mensaje_consejo_juego]

Example: INPUT
    usuario_autenticada: Usuario que ha iniciado sesión.
    landig_page: Página principal del sitio web.
    click_boton_jugar_ahora: Acción de hacer clic en el botón "Jugar ahora".

Example: OUTPUT
    pantalla_carga_juego: Pantalla que indica que el juego se está cargando.
    mensaje_consejo_juego: Mensaje que proporciona consejos para jugar.
