Feature: Conexión de entidades con autorización

  Como persona afiliada
  Quiero conectar entidades o fuentes de beneficios con mi autorización
  Para que Pointly pueda consultar beneficios asociados a mis afiliaciones sin solicitar ni almacenar mis contraseñas de otras plataformas

  Scenario: Conexión autorizada de una entidad disponible
    Given que la persona afiliada se encuentra en la sección de conexión de entidades
    And existe una entidad disponible para conectar
      | entidadDisponible | permisosSolicitados                 |
      | Entidad A         | consulta de beneficios asociados    |
    When selecciona la entidad "Entidad A"
    And autoriza el acceso con los permisos solicitados
    Then el sistema registra la conexión autorizada
    And muestra la entidad "Entidad A" como fuente activa de beneficios dentro de Pointly
    And no solicita ni almacena contraseñas de otras plataformas

  Scenario: Cancelación del proceso de autorización de una entidad
    Given que la persona afiliada se encuentra en la sección de conexión de entidades
    And existe una entidad disponible para conectar
      | entidadDisponible | permisosSolicitados              |
      | Entidad A         | consulta de beneficios asociados |
    When selecciona la entidad "Entidad A"
    And cancela el proceso de autorización
    Then el sistema no registra la entidad como fuente activa de beneficios
    And mantiene a la persona afiliada en la sección de conexión de entidades
    And no solicita ni almacena contraseñas de otras plataformas

  Scenario: Rechazo de autorización de una entidad
    Given que la persona afiliada se encuentra en la sección de conexión de entidades
    And existe una entidad disponible para conectar
      | entidadDisponible | permisosSolicitados              |
      | Entidad A         | consulta de beneficios asociados |
    When selecciona la entidad "Entidad A"
    And no autoriza el acceso con los permisos solicitados
    Then el sistema no registra la entidad como fuente activa de beneficios
    And mantiene a la persona afiliada en la sección de conexión de entidades
    And no solicita ni almacena contraseñas de otras plataformas
