Feature: Consulta del detalle de un beneficio

  Como persona afiliada
  Quiero consultar el detalle completo de un beneficio
  Para conocer su entidad de origen, condiciones y vigencia antes de intentar aprovecharlo

  Scenario Outline: Consulta del detalle de un beneficio seleccionado
    Given que la persona afiliada visualiza el beneficio "Beneficio A" en "<lugarDeSeleccion>"
    And el beneficio tiene la siguiente información registrada
      | nombreBeneficio | entidadOrigen | categoria   | vigencia   | condicionesUso                     |
      | Beneficio A     | Entidad A     | Gastronomía | 30/06/2026 | Válido según condiciones indicadas |
    When selecciona el beneficio "Beneficio A"
    Then el sistema muestra una vista detallada del beneficio
    And la vista muestra nombre del beneficio, entidad de origen, categoría, vigencia y condiciones de uso

    Examples:
      | lugarDeSeleccion       |
      | panel principal        |
      | resultados de búsqueda |
