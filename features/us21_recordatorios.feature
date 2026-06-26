Feature: Configuración de recordatorios

  Como persona afiliada
  Quiero configurar recordatorios sobre beneficios próximos a vencer
  Para recibir avisos oportunos según mis preferencias

  Scenario: Activación de recordatorios de beneficios próximos a vencer
    Given que la persona afiliada se encuentra en la sección de configuración de recordatorios
    And tiene un beneficio próximo a vencer registrado
      | nombreBeneficio | vigencia   | estado  |
      | Beneficio A     | 30/06/2026 | Vigente |
    When activa los recordatorios de beneficios próximos a vencer
    Then el sistema guarda la configuración de recordatorios como activa
    And el sistema programa alertas según las preferencias registradas del usuario

  Scenario: Pausa de recordatorios de beneficios próximos a vencer
    Given que la persona afiliada se encuentra en la sección de configuración de recordatorios
    And tiene los recordatorios de beneficios próximos a vencer activos
    When pausa los recordatorios durante un periodo definido
      | periodoPausa |
      | 7 días       |
    Then el sistema guarda la configuración de pausa
    And el sistema deja de enviar alertas durante el periodo definido

  Scenario: Desactivación de recordatorios de beneficios próximos a vencer
    Given que la persona afiliada se encuentra en la sección de configuración de recordatorios
    And tiene los recordatorios de beneficios próximos a vencer activos
    When desactiva los recordatorios de beneficios próximos a vencer
    Then el sistema guarda la configuración de recordatorios como desactivada
    And el sistema deja de enviar alertas

  Scenario Outline: Ajuste de frecuencia de recordatorios
    Given que la persona afiliada se encuentra en la sección de configuración de recordatorios
    And tiene los recordatorios de beneficios próximos a vencer activos
    When ajusta la frecuencia de los recordatorios a "<frecuenciaRecordatorio>"
    Then el sistema guarda la nueva frecuencia seleccionada
    And el sistema programa alertas según la configuración actualizada

    Examples:
      | frecuenciaRecordatorio |
      | 1 día antes            |
      | 3 días antes           |
      | 7 días antes           |