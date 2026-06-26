Feature: Configuración de permisos y uso de datos

  Como persona afiliada
  Quiero configurar los permisos y el uso de mis datos dentro de Pointly
  Para controlar qué información puede utilizarse en recomendaciones, recordatorios y personalización

  Scenario Outline: Activación de permisos para uso de datos
    Given que la persona afiliada se encuentra en la sección de privacidad y permisos
    And el permiso "<permiso>" se encuentra desactivado
    When activa el permiso "<permiso>"
    Then el sistema guarda la configuración del permiso como activa
    And el sistema permite utilizar esa información en "<funcionPointly>"

    Examples:
      | permiso                    | funcionPointly       |
      | uso para recomendaciones   | recomendaciones      |
      | uso para recordatorios     | recordatorios        |
      | uso para personalización   | personalización      |

  Scenario Outline: Desactivación de permisos para uso de datos
    Given que la persona afiliada se encuentra en la sección de privacidad y permisos
    And el permiso "<permiso>" se encuentra activado
    When desactiva el permiso "<permiso>"
    Then el sistema guarda la configuración del permiso como desactivada
    And el sistema deja de utilizar esa información en "<funcionPointly>"

    Examples:
      | permiso                    | funcionPointly       |
      | uso para recomendaciones   | recomendaciones      |
      | uso para recordatorios     | recordatorios        |
      | uso para personalización   | personalización      |
