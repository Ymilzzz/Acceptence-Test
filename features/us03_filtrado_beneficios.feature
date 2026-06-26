Feature: Filtrado de beneficios

  Como persona afiliada
  Quiero filtrar mis beneficios por entidad, categoría, estado y vigencia
  Para visualizar solo las promociones que sean relevantes para mi necesidad actual

  Scenario Outline: Filtrado de beneficios con coincidencias usando un filtro
    Given que la persona afiliada se encuentra en el panel de beneficios
    And tiene beneficios registrados
      | nombreBeneficio | entidadOrigen | categoria   | vigencia   | estado           |
      | Beneficio A     | Entidad A     | Gastronomía | 30/06/2026 | Vigente          |
      | Beneficio B     | Entidad B     | Delivery    | 15/07/2026 | Próximo a vencer |
      | Beneficio C     | Entidad C     | Salud       | 20/07/2026 | Usado            |
    When selecciona el filtro "<filtroSeleccionado>" con la opción "<opcionSeleccionada>"
    Then el sistema muestra solo el beneficio "<beneficioEsperado>" como resultado del filtrado

    Examples:
      | filtroSeleccionado | opcionSeleccionada | beneficioEsperado |
      | Entidad            | Entidad A          | Beneficio A       |
      | Categoría          | Delivery           | Beneficio B       |
      | Vigencia           | 20/07/2026         | Beneficio C       |
      | Estado             | Próximo a vencer   | Beneficio B       |

  Scenario: Filtrado de beneficios con más de un filtro
    Given que la persona afiliada se encuentra en el panel de beneficios
    And tiene beneficios registrados
      | nombreBeneficio | entidadOrigen | categoria   | vigencia   | estado  |
      | Beneficio A     | Entidad A     | Gastronomía | 30/06/2026 | Vigente |
      | Beneficio B     | Entidad B     | Delivery    | 15/07/2026 | Vigente |
      | Beneficio C     | Entidad C     | Salud       | 20/07/2026 | Vigente |
    When selecciona el filtro de entidad "Entidad B" y categoría "Delivery"
    Then el sistema muestra solo el beneficio "Beneficio B"

  Scenario: Filtrado de beneficios sin coincidencias
    Given que la persona afiliada se encuentra en el panel de beneficios
    And tiene beneficios registrados
      | nombreBeneficio | entidadOrigen | categoria   | vigencia   | estado  |
      | Beneficio A     | Entidad A     | Gastronomía | 30/06/2026 | Vigente |
      | Beneficio B     | Entidad B     | Delivery    | 15/07/2026 | Vigente |
      | Beneficio C     | Entidad C     | Salud       | 20/07/2026 | Vigente |
    When selecciona filtros que no coinciden con ningún beneficio registrado
    Then el sistema muestra un mensaje indicando que no se encontraron beneficios con los filtros seleccionados
