Feature: Búsqueda y filtrado en tienda de objetos
    Como usuario coleccionista
    Quiero buscar y filtrar objetos en la tienda por Objetos, Ropa, Accesorios y Precio
    Para encontrar fácilmente lo que necesito

Scenario: Usuario busca capas épicas
    Given que el usuario desea encontrar una capa_epica
    When aplica los filtros [filtro_tipo_ropa] y [filtro_rareza_especial]
    Then el sistema mostrará los [resultados_gorros_especiales]

Example: INPUT
    filtro_tipo_ropa: Filtro aplicado para mostrar solo objetos de tipo ropa.
    filtro_rareza_especial: Filtro para mostrar solo ítems de rareza especial.

Example: OUTPUT
    resultados_gorros_especiales: Lista de gorros especiales disponibles en la tienda.

---

Scenario: Usuario busca objetos que puede comprar
    Given que el usuario tiene un budget_limitado
    When activa el filtro [precio_ascendente]
    Then el sistema mostrará los [objetos_mas_baratos]

Example: INPUT
    precio_ascendente: Filtro que ordena los objetos del menor precio al mayor.

Example: OUTPUT
    objetos_mas_baratos: Lista de objetos ordenados desde los más económicos hasta los más costosos.