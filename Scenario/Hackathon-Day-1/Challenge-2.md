# Desafío 02: Implementar la Búsqueda de Documentos con Azure AI Search

### Tiempo Estimado: 120 minutos

## Introducción:

Contoso está aprovechando Azure AI Search y Azure OpenAI (GPT-3.5-Turbo) para crear una solución de búsqueda de documentos que no solo facilita la búsqueda de documentos de soporte, sino que también utiliza el potente modelo de lenguaje de OpenAI para comprender y procesar las consultas de los clientes de forma eficaz. Esta integración permitirá a Contoso proporcionar respuestas precisas y relevantes, agilizando así sus servicios de soporte.

Azure AI Search se utilizará para organizar e indexar los grandes volúmenes de documentos de soporte de Contoso, mientras que Azure OpenAI interpretará las consultas de los clientes para realizar búsquedas semánticas, mejorando la relevancia de los resultados de búsqueda. Esta fusión de tecnologías ayudará a tomar decisiones informadas y a extraer información vital de datos no estructurados, lo que en última instancia proporcionará un sistema de recuperación de información sin inconvenientes que mejora la experiencia de soporte al cliente de Contoso.

En este desafío, clonará un repositorio proporcionado para sentar las bases para Azure AI Search, lo integrará con Azure AI Services y creará un potente indexador para capacidades de búsqueda avanzadas. Por último, trabajará en el perfeccionamiento de las consultas de búsqueda y dará inicio al desarrollo de una aplicación de búsqueda que aproveche tanto Azure AI Search como el modelo de lenguaje de OpenAI.

## Objetivos del Desafío:

> **Importante**: Al implementar servicios en este desafío, asegúrese de usar el grupo de recursos denominado **<inject key="Resource Group Name"/>** !

1. **Clonar el Repositorio:**
   - Clone el repositorio dentro de Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.
      > Sugerencia: Puede utilizar el siguiente repositorio, https://github.com/MicrosoftLearning/AI-102-AIEngineer, a fin de explorar y ejecutar los escenarios que se enumeran a continuación.


2. **Configurar Recursos de Azure:**
   - Cree un recurso de Azure AI Search con nivel de tarifa Básico.
   - Cree un servicio de Azure AI con el SKU Standard S0.
   - Cree una Cuenta de Almacenamiento de Azure (Azure Storage Account) con el nivel Estándar.


3. **Preparar la Carga de Documentos:**
   - En Visual Studio Code, dentro del repositorio clonado, navegue hasta la carpeta 22-create-a-search-solution.
   - Edite el archivo por lotes UploadDocs.cmd con los valores requeridos.


4. **Ejecutar el Script de Carga:**
   - Abra y examine el archivo por lotes UploadDocs.cmd utilizando VS Code.
   - Ejecute el archivo por lotes para asegurarse de que se creen los recursos y archivos necesarios en Azure.
      > Sugerencia: Comience por asegurarse de que tiene las credenciales adecuadas. Este comando lo guiará para iniciar sesión en su cuenta de Azure mediante la CLI de Azure.


5. **Importar e Indexar datos:**
   - Importe datos para AI Search mediante Blob Storage.
   - Enlace con Azure AI Services y personalice el índice.
   - Cree un indexador para una integración de datos perfecta.


6. **Consultar Documentos Indexados:**
   - Ajuste las consultas para incluir recuentos y campos específicos.
   - Defina los componentes de búsqueda.
   - Consulte el índice modificado para recuperar información detallada y específica.
      > Sugerencia: Refine sus consultas para contar los resultados, elija campos específicos, configure los componentes de búsqueda y utilice el índice actualizado para obtener información detallada y específica.


7. **Implementar y Probar una Aplicación Cliente de Búsqueda:**
   - Actualice la configuración de la aplicación y configure la aplicación web.
   - Ejecute la aplicación localmente para probar la funcionalidad de búsqueda.
      > Sugerencia: La aplicación admite varios idiomas; elija el que se adapte a los requisitos de su proyecto. Ajuste la configuración de la aplicación y configure la aplicación web según sea necesario. Luego, ejecute la aplicación localmente para probar la funcionalidad de búsqueda antes de proceder a la implementación.


   <validation step="15277a80-8b44-474a-ac19-0831c71d5fbd" />

   
## Criterios de éxito:

Para completar este desafío con éxito, debe:

   - Implementar el Servicio Azure AI Search y Azure Storage Account.
   - Agregar datos a la cuenta de almacenamiento.
   - Indexar los documentos en Azure AI Search mediante el portal de Azure.
   - Personalizar el índice y configurar el indexador en Azure AI Search.
   - Modificar y explorar los componentes de búsqueda mediante definiciones JSON.
   - Utilizar el SDK de Azure AI Search para crear una aplicación cliente para búsquedas.
   - Ejecutar la aplicación web localmente, realizar búsquedas y refinar los resultados de búsqueda de forma eficaz.

## Recursos Adicionales:

- Consulte [¿Qué es Azure AI Search?](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) como referencia.
- [¿Qué son los Índices en Azure AI Search?](https://learn.microsoft.com/en-us/azure/search/search-what-is-an-index)
- [Búsqueda de texto de documentos a escala mediante Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)
