Feature: Registrar intereses manualmente
    Como usuario nuevo que desea mostrar sus intereses
    Quiero añadir mis gustos manualmente
    Para que mi perfil refleje mis intereses personales

Scenario: Usuario visualiza la pantalla de intereses
    Given que el usuario se encuentra en el proceso_registro
    When complete el llenado de sus [datos_registro]
    Then el sistema mostrará la [pantalla_intereses]

Example: INPUT
    datos_registro: Información básica completada por el usuario (nombre, email, contraseña, etc.).

Example: OUTPUT
    pantalla_intereses: Vista donde el usuario selecciona intereses y etiquetas.

---

Scenario: Usuario no quiere registrar sus intereses por el momento
    Given que el usuario se encuentra en la pantalla_intereses
    When el usuario decida omitir el paso [boton_omitir]
    Then el sistema continuará al [siguiente_paso_registro]

Example: INPUT
    boton_omitir: Botón que permite saltar la selección de intereses.

Example: OUTPUT
    siguiente_paso_registro: Continuación del flujo de registro sin guardar intereses.

---

Scenario: Usuario selecciona sus intereses
    Given que el usuario se encuentra en la pantalla_intereses
    When el usuario seleccione sus [intereses_usuario]
    Then el sistema mostrará los [intereses_seleccionados]
    And guardará los [intereses_guardados_perfil]

Example: INPUT
    intereses_usuario: Etiquetas que el usuario decide seleccionar manualmente.

Example: OUTPUT
    intereses_seleccionados: Intereses visibles en pantalla con su icono único.
    intereses_guardados_perfil: Conjunto final de intereses registrados en el perfil del usuario.