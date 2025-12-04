Feature: Filtrar eventos por nivel de interacción social
    Como usuario
    Quiero filtrar los eventos según su nivel de interacción (bajo, medio o alto)
    Para poder asistir a aquellos con los que me sienta más cómodo

Scenario: Usuario quiere ir a eventos con poca interacción
    Given que el usuario desea asistir a eventos_poca_interaccion
    When seleccione el filtro [filtro_bajo]
    Then el sistema mostrará los [eventos_filtrados_bajo]

Example: INPUT
    filtro_bajo: Filtro aplicado para mostrar únicamente eventos de interacción baja.

Example: OUTPUT
    eventos_filtrados_bajo: Lista de eventos etiquetados como interacción baja.

---

Scenario: Usuario quiere ir a eventos con un nivel medio de interacción
    Given que el usuario busca eventos_interaccion_media
    When seleccione el filtro [filtro_medio]
    Then el sistema mostrará los [eventos_filtrados_medios]

Example: INPUT
    filtro_medio: Filtro aplicado para mostrar eventos de nivel social medio.

Example: OUTPUT
    eventos_filtrados_medios: Lista de eventos con etiqueta de interacción social media.