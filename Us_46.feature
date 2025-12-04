Feature: Agregar y eliminar etiquetas de hobbies manualmente
    Como usuario con constante uso del programa
    Quiero editar y eliminar intereses de mi perfil manualmente
    Para que mi perfil refleje mis intereses personales actualizados

Scenario: Usuario elimina una etiqueta
    Given que el usuario se encuentra en la pantalla_perfil_intereses
    When presione el [icono_eliminar_etiqueta]
    Then el sistema eliminará la [etiqueta_eliminada] del cuadro de etiquetas seleccionadas

Example: INPUT
    icono_eliminar_etiqueta: Botón representado con una "X" para borrar una etiqueta.

Example: OUTPUT
    etiqueta_eliminada: Etiqueta removida de la lista de intereses seleccionados.

---

Scenario: Usuario agrega un interés desde la edición de intereses
    Given que el usuario se encuentra en la pantalla_perfil_intereses
    When presione el [icono_agregar_etiqueta]
    Then el sistema añadirá la [etiqueta_agregada] al perfil del usuario

Example: INPUT
    icono_agregar_etiqueta: Botón "+" para añadir nuevas etiquetas.

Example: OUTPUT
    etiqueta_agregada: Nueva etiqueta agregada correctamente al perfil.

---

Scenario: Usuario busca un interés específico
    Given que el usuario se encuentra en la pantalla_perfil_intereses
    When ingrese un [texto_buscado] en el cuadro de búsqueda
    And presione el [icono_lupa]
    Then el sistema mostrará los [resultados_intereses]

Example: INPUT
    texto_buscado: Nombre o palabra clave del interés que el usuario quiere encontrar.
    icono_lupa: Botón que ejecuta la búsqueda dentro de las etiquetas disponibles.

Example: OUTPUT
    resultados_intereses: Lista filtrada con intereses que coinciden con el término buscado