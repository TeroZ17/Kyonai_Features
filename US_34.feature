Feature: Recomendaciones de nuevas amistades en base a hobbies
    Como jugador hikikomori que busca socializar de forma gradual
    Quiero recibir sugerencias de amistades con intereses similares
    Para conectarme con personas que compartan mis gustos y nivel social

Scenario: Generación de sugerencias
    Given que el usuario ha completado sus [etiquetas_hobbies]
    When el usuario accede a [pantalla_nuevas_amistades]
    Then la aplicación mostrará una [lista_sugerencias_amistades]
    And cada recomendación mostrará un [cuadro_usuario]

Example: INPUT
    etiquetas_hobbies: Conjunto de etiquetas de intereses registradas por el usuario.

Example: OUTPUT
    lista_sugerencias_amistades: Lista de usuarios con hobbies similares.
    cuadro_usuario: Cuadro que contiene nombre y código de cada posible nueva amistad.
    pantalla_nuevas_amistades: Sección donde se muestran recomendaciones de nuevas amistades.