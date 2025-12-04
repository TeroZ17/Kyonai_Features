Feature: Sistema de gacha para obtención de objetos
    Como usuario que desea obtener objetos mediante un sistema gacha
    Quiero usar monedas virtuales para hacer invocaciones
    Para coleccionar ítems exclusivos y personalizar mi experiencia

Scenario: Usuario usa monedas para desbloquear objetos
    Given que el usuario tiene monedas_suficientes
    When selecciona el gacha [gacha_limitado]
    Then el sistema descontará las monedas [descuento_monedas]
    And el sistema mostrará la recompensa [recompensa_obtenida]

Example: INPUT
    gacha_limitado: Tipo de gacha especial con objetos exclusivos.
    descuento_monedas: Costo en monedas requerido para realizar la invocación.

Example: OUTPUT
    recompensa_obtenida: Ítem revelado al usuario mediante una animación.

---

Scenario: Usuario no cuenta con monedas suficientes
    Given que el usuario no tiene monedas_suficientes
    When intenta invocar en el [gacha_limitado]
    Then el sistema mostrará el mensaje [monedas_insuficientes]

Example: INPUT
    gacha_limitado: Intento de acceder al gacha especial.

Example: OUTPUT
    monedas_insuficientes: Mensaje “monedas insuficientes”.

---

Scenario: Usuario alcanzó el límite de tiradas diarias
    Given que el usuario alcanzó el limite_diario
    When intenta seguir invocando en el [gacha_limitado]
    Then el sistema mostrará el mensaje [limite_alcanzado]
    And el sistema impedirá nuevas invocaciones [invocacion_bloqueada]

Example: INPUT
    gacha_limitado: Intento de usar el gacha tras haber alcanzado el límite.

Example: OUTPUT
    limite_alcanzado: Mensaje “alcanzaste el límite de invocaciones por hoy”.
    invocacion_bloqueada: Impide continuar realizando tiradas.