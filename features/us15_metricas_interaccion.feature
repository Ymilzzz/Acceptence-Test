Feature: Consulta de métricas de interacción

  Como entidad o comercio aliado
  Quiero consultar métricas agregadas de interacción
  Para identificar qué beneficios generan mayor interés dentro de Pointly

  Scenario: Consulta de métricas agregadas de interacción de un beneficio
    Given que la entidad o comercio aliado se encuentra en el panel de métricas
    And existen interacciones registradas para sus beneficios
      | nombreBeneficio | guardadosFavoritos | aperturasDetalle | cambiosEstado |
      | Beneficio A     | 18                 | 42               | 9             |
      | Beneficio B     | 10                 | 25               | 6             |
    When selecciona el beneficio "Beneficio A"
    Then el sistema muestra métricas agregadas de interacción del beneficio seleccionado
    And muestra 18 guardados en favoritos
    And muestra 42 aperturas de detalle
    And muestra 9 cambios de estado
    And no muestra nombres, correos, teléfonos ni identificadores personales de los usuarios

  Scenario: Consulta de métricas agregadas de interacción de un conjunto de beneficios
    Given que la entidad o comercio aliado se encuentra en el panel de métricas
    And existen interacciones registradas para sus beneficios
      | nombreBeneficio | guardadosFavoritos | aperturasDetalle | cambiosEstado |
      | Beneficio A     | 18                 | 42               | 9             |
      | Beneficio B     | 10                 | 25               | 6             |
    When selecciona los beneficios "Beneficio A" y "Beneficio B"
    Then el sistema muestra métricas agregadas de interacción del conjunto seleccionado
    And muestra 28 guardados en favoritos
    And muestra 67 aperturas de detalle
    And muestra 15 cambios de estado
    And no muestra nombres, correos, teléfonos ni identificadores personales de los usuarios
