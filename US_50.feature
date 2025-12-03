Feature: Cambiar contraseña del usuario
    Como usuario
    Quiero poder cambiar la contraseña con la que inicié sesión
    Para mantener mi cuenta segura ante posibles robos

Scenario: Cambio exitoso de contraseña
    Given que el usuario está autenticado
    And accede a la sección [pantalla_cambiar_contraseña]
    When ingresa una [nueva_contraseña_valida]
    And confirma la [confirmacion_contraseña_correcta]
    Then el sistema actualizará la [contraseña_actualizada]
        And mostrará el [mensaje_exito]

Example: INPUT
    pantalla_cambiar_contraseña: Ajustes > Cambiar contraseña.
    nueva_contraseña_valida: Contraseña que cumple los requisitos.
    confirmacion_contraseña_correcta: Confirmación igual a la nueva contraseña.

Example: OUTPUT
    contraseña_actualizada: Nueva contraseña guardada correctamente.
    mensaje_exito: “La contraseña fue actualizada correctamente”.

---

Scenario: Confirmación no coincide
    Given que el usuario está autenticado
    When ingresa una [nueva_contraseña]
        And la [confirmacion_incorrecta] es diferente
    Then el sistema no permite el [cambio_contraseña]
        And muestra el [mensaje_error_no_coinciden]

Example: INPUT
    nueva_contraseña: Contraseña ingresada por el usuario.
    confirmacion_incorrecta: Confirmación distinta.
    
Example: OUTPUT
    cambio_contraseña: Acción bloqueada.
    mensaje_error_no_coinciden: “Las contraseñas no coinciden”.

---

Scenario: Nueva contraseña no cumple requisitos
    Given que el usuario está autenticado
    When intenta establecer una [contraseña_invalida]
    Then el sistema no permite el [cambio_contraseña]
        And muestra el [mensaje_error_requisitos]

Example: INPUT
    contraseña_invalida: Contraseña que no cumple requisitos mínimos.

Example: OUTPUT
    cambio_contraseña: Acción rechazada.
    mensaje_error_requisitos: “La nueva contraseña no cumple los requisitos de seguridad”.