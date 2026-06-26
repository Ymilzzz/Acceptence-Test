Feature: Consulta de métricas de visualización

  Como entidad o comercio aliado
  Quiero consultar métricas agregadas de visualización
  Para conocer qué beneficios están siendo vistos con mayor frecuencia por los usuarios

  Scenario: Consulta de visualizaciones por beneficio en un rango de fechas
    Given que la entidad o comercio aliado ingresa al panel de métricas
    And existen visualizaciones registradas para sus beneficios
      | nombreBeneficio | fechaVisualizacion | cantidadVisualizaciones |
      | Beneficio A     | 01/06/2026         | 25                      |
      | Beneficio A     | 02/06/2026         | 18                      |
      | Beneficio B     | 01/06/2026         | 12                      |
    When selecciona el rango de fechas del "01/06/2026" al "02/06/2026"
    Then el sistema muestra la cantidad de visualizaciones por beneficio de forma agregada
    And muestra "Beneficio A" con 43 visualizaciones
    And muestra "Beneficio B" con 12 visualizaciones
    And no muestra nombres, correos, teléfonos ni identificadores personales de los usuarios
