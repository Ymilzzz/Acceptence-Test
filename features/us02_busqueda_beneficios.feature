Feature: Búsqueda de beneficios

  Como persona afiliada
  Quiero buscar beneficios mediante palabras clave
  Para encontrar rápidamente una promoción específica sin revisar todo el catálogo

  Scenario Outline: Búsqueda de beneficios con coincidencias
    Given que la persona afiliada se encuentra en el panel de beneficios
    And tiene beneficios registrados
      | nombreBeneficio | entidadOrigen | categoria   |
      | Pizza familiar  | Entidad A     | Gastronomía |
      | Delivery gratis | Entidad B     | Delivery    |
      | Descuento salud | Entidad C     | Salud       |
    When ingresa la palabra clave "<palabraClave>" en el buscador
    Then el sistema muestra el beneficio "<beneficioEsperado>" como resultado relacionado con la búsqueda

    Examples:
      | palabraClave | beneficioEsperado |
      | Pizza        | Pizza familiar    |
      | Entidad B    | Delivery gratis   |
      | Salud        | Descuento salud   |

  Scenario: Búsqueda de beneficios sin coincidencias
    Given que la persona afiliada se encuentra en el panel de beneficios
    And tiene beneficios registrados
      | nombreBeneficio | entidadOrigen | categoria   |
      | Pizza familiar  | Entidad A     | Gastronomía |
      | Delivery gratis | Entidad B     | Delivery    |
      | Descuento salud | Entidad C     | Salud       |
    When ingresa una palabra clave sin coincidencias en el buscador
    Then el sistema muestra un mensaje indicando que no se encontraron beneficios relacionados con la búsqueda