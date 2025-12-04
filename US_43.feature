Feature: Configuración de privacidad y visibilidad de perfil
    Como usuario preocupado por mi privacidad
    Quiero controlar qué información muestro públicamente
    Para sentirme seguro dentro del entorno virtual

Scenario: Usuario no quiere mostrar su perfil de manera pública
    Given que el usuario desea mayor_privacidad
    When active la opción [modo_privado]
    Then su perfil mostrará únicamente el [perfil_minimo_publico]

Example: INPUT
    modo_privado: Configuración que oculta la mayoría de los datos del perfil.

Example: OUTPUT
    perfil_minimo_publico: Perfil visible solo con nickname y avatar básico.

---

Scenario: Usuario no desea recibir solicitudes de amistad
    Given que el usuario recibe solicitudes_no_deseadas
    When desactive la opción [permitir_solicitudes_amistad]
    Then el sistema ocultará el [boton_agregar_amigo] del perfil público

Example: INPUT
    permitir_solicitudes_amistad: Configuración que controla si otros pueden enviar solicitudes.

Example: OUTPUT
    boton_agregar_amigo: Elemento que desaparece del perfil público al desactivar solicitudes.