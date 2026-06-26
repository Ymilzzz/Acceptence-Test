Feature: Visualización de beneficios

  Como persona afiliada
  Quiero visualizar mis beneficios personalizados vigentes en un panel principal
  Para revisarlos desde un solo lugar sin consultar correos, mensajes u otras aplicaciones

  Scenario: Visualización de beneficios vigentes en el panel principal
    Given que la persona afiliada ha iniciado sesión en Pointly
    And tiene beneficios vigentes registrados
      | nombreBeneficio | entidadOrigen | categoria   | vigencia   | estado  |
      | Beneficio A     | Entidad A     | Gastronomía | 30/06/2026 | Vigente |
      | Beneficio B     | Entidad B     | Delivery    | 15/07/2026 | Vigente |
      | Beneficio C     | Entidad C     | Salud       | 20/07/2026 | Vigente |
    When ingresa al panel principal
    Then el sistema muestra sus beneficios consolidados
    And cada beneficio muestra nombre del beneficio, entidad de origen, categoría, vigencia y estado