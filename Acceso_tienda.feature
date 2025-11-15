Feature: Acceso a la tienda de objetos
    Como usuario
    Quiero poder ingresar fácilmente a la tienda de objetos desde la pagina principal
    Para comprar artículos que mejoren mi mundo virtual

Scenario: EL usuario accede a la tienda
    Given que el [usuario_autencada] ha iniciado sesión
    And se encuentra en la [pagina_principal]
    When realia la accion [click_boton_tienda]
    Then la aplicación mostrará el [cátalogo_objetos_por_categorias]
    And se visualizara el [cuadro_objeto_seleccionado] en la parte central del apartado

Example: INPUT
    usuario_autencada: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión en la plataforma.
    pagina_principal: Página principal de la plataforma donde los usuarios pueden acceder a diferentes secciones.
    click_boton_tienda: Acción de hacer clic en el botón o enlace que dirige a la tienda de objetos.

Example: OUTPUT
    cátalogo_objetos_por_categorias: Lista organizada de objetos disponibles en la tienda, clasificados por categorías.
    cuadro_objeto_seleccionado: Cuandro en el centro de la pantalla donde se muestra información del objeto seleccionado.

Scenario: Compra exitosa de un objeto
    Given que el [usuario_autencada] ha iniciado sesión
    And se encuentra en la [pagina_tienda]
    When realia la accion [seleccionar_objeto_comprar]
    And confirma la compra [click_boton_confirmar_compra]
    Then la aplicación mostrará el [mensaje_confirmacion_compra]
    And el objeto se añadirá al [inventario_usuario]

Example: INPUT
    usuario_autencada: Usuario que ha ingresado sus credenciales correctamente y ha iniciado sesión
    pagina_tienda: Página de la tienda donde los usuarios pueden ver y comprar objetos.
    seleccionar_objeto_comprar: Es la acción de seleccionar un objeto específico para comprar en la tienda.
    click_boton_confirmar_compra: Es la acción de hacer clic en el botón que confirma la compra del objeto seleccionado.

Example: OUTPUT
    mensaje_confirmacion_compra: Mensaje que confirma que la compra del objeto ha sido realizada exitosamente.
    inventario_usuario: Sección del perfil del usuario donde se almacenan los objetos adquiridos.