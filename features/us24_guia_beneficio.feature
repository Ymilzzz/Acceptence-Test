Feature: Guía de uso del beneficio

  Como persona afiliada
  Quiero recibir una guía de uso para un beneficio seleccionado
  Para saber cómo aplicarlo correctamente en el comercio o canal correspondiente

  Scenario: Visualización de guía práctica para usar un beneficio vigente
    Given que la persona afiliada visualiza un beneficio vigente
    And el beneficio tiene la siguiente información registrada
      | nombreBeneficio | entidadOrigen | canalAplicable | pasosCanje                          | indicacionesUso                   |
      | Beneficio A     | Entidad A     | Comercio A     | Mostrar el beneficio antes de pagar | Revisar condiciones antes de usar |
    When selecciona la opción de usar beneficio
    Then el sistema muestra una guía práctica de uso
    And la guía muestra los pasos de canje, el canal o comercio aplicable y las indicaciones necesarias para completar el uso del beneficio
