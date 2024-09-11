# Desafío-06: Implementar el Monitoreo y el Registro de Azure OpenAI utilizando el Servicio API Management

## Introducción:

Basándose en el éxito de la mejora de la aplicación de chat de Contoso impulsada por IA con el procesamiento de documentos sin servidor, su próximo objetivo es poner en funcionamiento estas soluciones de Azure OpenAI con mecanismos de registro y monitoreo sólidos. En este desafío, profundizará en las complejidades de la configuración y el análisis de sistemas de monitoreo avanzados mediante el Servicio API Management de Azure y el área de trabajo de Log Analytics. Este es un paso crucial para garantizar el buen funcionamiento y mantenimiento de las soluciones de IA que ha desarrollado, proporcionando información valiosa sobre el rendimiento del sistema y las interacciones de los usuarios.

Su tarea consiste en implementar un monitoreo exhaustivo para el servicio Azure OpenAI, aprovechando la configuración de diagnóstico y las consultas de Kusto para realizar un análisis en profundidad de los registros. Además, integrará el servicio API Management para supervisar las respuestas de los prompts de chat y analizar más a fondo los prompts y los resultados. Este nivel de supervisión es esencial para que Contoso mantenga una aplicación de chat de IA de alta calidad, eficiente y fácil de usar.

## Objetivos del Desafío:

> **Importante**: Al implementar servicios en este desafío, ¡asegúrese de utilizar el grupo de recursos denominado **rg-activategenai**!  !

1. **Monitorear el Servicio Azure OpenAI:**
   - Establezca configuraciones de diagnóstico para los servicios de Azure OpenAI existentes.
   - Realice análisis de registros utilizando Consultas Kusto para monitorear el rendimiento y el uso del servicio.


     
2. **Monitorear los prompts de OpenAI utilizando Azure API Management:**
   - Utilice Consultas Kusto dentro de API Management para realizar un análisis de registros completo, centrándose en las respuestas de los mensajes de chat y las interacciones de los prompts.


   <validation step="9f41c452-42da-4841-9ee1-0c8fcbdbd9ad" />
  
## Criterios de Éxito:

Los participantes serán evaluados en función de los siguientes criterios:

1. Configurar correctamente el servicio Azure OpenAI con la configuración de diagnóstico adecuada y analizar sus registros mediante Consultas Kusto.
2. Crear y configurar eficazmente Azure API Management, garantizando una visibilidad clara de los registros y los prompts de OpenAI mediante un análisis detallado de Consultas Kusto.

## Recursos Adicionales:

- Consulte [Cómo configurar el Servicio Azure API Management](https://github.com/Azure-Samples/openai-python-enterprise-logging/blob/main/README.md) para obtener información detallada.
- Consulte este video sobre [Registro y Monitoreo de Todo en Azure OpenAI con el Servicio API Management](https://github.com/Azure-Samples/openai-python-enterprise-logging/blob/main/README.md).
- Consulte el [Tutorial de Consultas Kusto](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-tutorial) para obtener información detallada.
