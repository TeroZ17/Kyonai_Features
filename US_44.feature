Feature: Sistema de verificación en dos pasos para seguridad de cuenta
    Como usuario preocupado por la seguridad
    Quiero activar la verificación en dos pasos
    Para proteger mi cuenta y mi progreso dentro del juego

Scenario: Usuario inicia sesión exitosamente con autenticación
    Given que el usuario activó la [verificacion_dos_pasos]
    When inicie sesión desde un [nuevo_dispositivo]
    Then el sistema solicitará el [codigo_autenticacion_6digitos]

Example: INPUT
    verificacion_dos_pasos: Configuración que permite habilitar la autenticación en dos pasos.
    nuevo_dispositivo: Dispositivo no registrado previamente en la cuenta del usuario.

Example: OUTPUT
    codigo_autenticacion_6digitos: Código generado por la app autenticadora para validar el inicio de sesión.

---

Scenario: Usuario recupera el acceso a su cuenta con código de respaldo
    Given que el usuario perdió su telefono
    When use sus [codigos_respaldo]
    Then podrá recuperar el [acceso_cuenta]
    And generar [nuevos_codigos_respaldo]

Example: INPUT
    codigos_respaldo: Códigos alternativos entregados al activar la verificación en dos pasos.

Example: OUTPUT
    acceso_cuenta: Permiso restaurado para ingresar al juego.
    nuevos_codigos_respaldo: Conjunto renovado de códigos de emergencia.