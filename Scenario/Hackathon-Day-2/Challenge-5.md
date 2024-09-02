# Desafio 05: Processamento de Documentos usando Serverless Computing 

### Tempo Estimado: 90 minutos

## Introdução:

Bem-vindo a um desafio onde a Contoso Ltd. pretende melhorar o seu aplicativo de chat com IA com um sistema robusto de processamento de documentos. Este desafio se concentra na criação de uma solução serverless para processar novos documentos, traduzindo-os conforme necessário e armazenando-os de maneira contínua no Azure AI Search. Esse sistema garantirá que os documentos estejam sempre disponíveis para consumo pelo Azure OpenAI, melhorando a base de conhecimento da aplicação de chat e a precisão das respostas.

Baseando-se nas suas conquistas anteriores de balanceamento de carga dos recursos do Azure OpenAI, você agora embarcará em uma jornada para otimizar o processamento de documentos. Isso envolve configurar um serviço de tradução, criar uma arquitetura serverless para processamento em escala utilizando serviços do Azure e aproveitar tecnologias como o Form Recognizer e o Azure AI Search. A sua tarefa é garantir que documentos recém-adicionados sejam prontamente processados, analisados e indexados, tornando-os facilmente acessíveis para utilização pela IA do aplicativo de chat.

Este desafio se desenvolve em três etapas principais: tradução de idiomas, processamento em escala de documentos usando uma arquitetura serverless com serviços do Azure e aproveitamento de recursos avançados como o Form Recognizer e o AI Search. Começamos traduzindo arquivos para atender aos requisitos de idioma. Em seguida, você implementa uma arquitetura serverless, utilizando serviços do Azure, para o processamento eficiente de documentos em escala. Você treina e testa o nosso modelo, estabelece um pipeline para converter documentos no formato do Form Recognizer e utiliza o serviço de busca do Azure AI para verificar a presença de documentos específicos no conjunto de dados processados, de onde podem ser utilizados pelo Azure OpenAI.

Você utilizará o Form Recognizer Service e o Business Process Automation (BPA) Accelerator para construir pipelines entre vários serviços do Azure, criando uma solução integrada de processamento de documentos. Este desafio é um passo em direção a uma solução de IA que possa se adaptar e crescer com as necessidades de negócios da Contoso.

## Objetivos do Desafio:

> **Important**: Ao provisionar os serviços neste desafio, certifique-se de usar o grupo de recursos com o nome **<inject key="Resource Group Name"/>**  !

1. **Configurar o Azure Blob Storage:**
   - Crie os containers de origem e destino no Azure Blob Storage para o processamento de documentos, configurando o acesso como blob access.


2. **Inicialize o Ambiente C#/.NET para Processamento de Documentos:**
   - Configure um projeto C#/.NET no Visual Studio para tradução de documentos usando o .NET versão 7.
   - Instale os pacotes necessários, incluindo o Newtonsoft.Json.


3. **Traduza Documentos e Execute o Aplicativo:**
   - Implemente o código para a tradução de documentos no projeto C#/.NET..
   - Execute o aplicativo para traduzir todos os documentos no container de armazenamento.
   > Nota: Você pode encontrar os documentos em C:\LabFiles\Documents.


   <validation step="6936c21b-ffd6-4778-904b-25346932940b" />

**Usar o Doc Intelligence:**
> **Importante**: Ao provisionar os serviços neste desafio, certifique-se de usar o grupo de recursos com o nome  **<inject key="Resource Group Name"/>**  !

1. **Usando um recurso de Azure Document Intelligence (Form Recognizer):**
    - Navegue até os serviços de Azure AI e utilize o recurso de Azure Document Intelligence (Form Recognizer).
    - Carregue e rotule documentos de treinamento para treinar o modelo de Azure Document Intelligence (Form Recognizer).
    > Nota: Você pode encontrar os documentos em  C:\LabFiles\Documents.


2. **Crie um Novo Pipeline com um Módulo de Modelo Personalizado no BPA:**
    - Utilize o modelo treinado de Azure Document Intelligence para criar um novo pipeline no BPA.
    - Configure o pipeline para um processamento eficiente de documentos e integração com o Azure Cognitive Search.
    > Dica : Use uma static web app.


3. **Configure o Azure AI Search:**
    - Conecte-se ao Azure Blob Storage e configure a importação de dados e a indexação.
    - Configure um indexador para a recuperação organizada de dados.


4. **Atualize o Modelo de Azure OpenAI para usar o Azure AI Search**
    - Atualize a o seu modelo existente de Azure OpenAI para conectar ao novo índice de AI Search criado e teste utilizando o Azure OpenAI Playground.
      
## Critério de Sucesso:

- Tradução bem-sucedida dos documentos e armazenamento no container em Azure Blob Storage.
- Configuração e utilização eficaz do recurso Form Recognizer e do pipeline BPA.
- Configuração adequada do Azure Cognitive Search para documentos processados.
- Validação do processamento de documentos e da funcionalidade de pesquisa usando o Sample Search Application no BPA.

## Recursos Adicionais:

- Consulte [document translation](https://learn.microsoft.com/en-us/azure/ai-services/translator/document-translation/quickstarts/document-translation-rest-api?pivots=programming-language-csharp#code-sample) para o código de exemplo que será usado para tradução de documentos usando C#.
- Consulte [Document Translation operations](https://learn.microsoft.com/en-us/azure/ai-services/translator/document-translation/reference/rest-api-guide) para entender as APIs REST que utilizamos para a tradução de documentos.
