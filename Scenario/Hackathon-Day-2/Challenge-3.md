# Desafio 03:  Deploy an AI-Powered Chat App

### Tempo Estimado: 150 minutes

## Introdução:

Neste desafio, você irá provisionar uma aplicação de chat alimentado por IA, projetado especificamente para a Contoso Electronics. Esta aplicação, desenvolvida com React para o frontend e Python para o backend, apresenta recursos avançados como interfaces de chat e perguntas e respostas, tudo aprimorado por capacidades de IA. É uma excelente oportunidade para você explorar a integração do Azure OpenAI Service com o modelo GPT-3.5 Turbo e o Azure Cognitive Search para indexação e recuperação de dados eficiente.

Esta aplicação de demonstração é mais do que apenas uma interface de chat; ela demonstra o padrão Retrieval-Augmented Generation, oferecendo uma experiência rica, semelhante ao ChatGPT, com base nos próprios dados da Contoso. Os recursos do aplicativo incluem avaliação da confiabilidade das respostas com citações, rastreamento do conteúdo de origem, preparação de dados, construção de prompts e orquestração da interação entre o modelo ChatGPT e o Cognitive Search. Você também encontrará configurações ajustáveis na interface do usuário para experimentação e rastreamento e monitorização de desempenho opcional com o Application Insights.

Neste desafio, a sua tarefa é implementar esta solução abrangente de chat para a Contoso, permitindo que eles avaliem as suas capacidades e a integrem em seu ambiente. O repositório vem com dados de demonstração, representando uma solução pronta para uso, de ponta a ponta. Esta aplicação é uma ferramenta valiosa para os funcionários da Contoso consultarem sobre benefícios da empresa, políticas internas, descrições de cargos e funções.

Você usará Bicep para provisionar a aplicação de chat.

A aplicação de chat se integra perfeitamente com diferentes serviços Azure para fornecer uma experiência inteligente ao usuário. Aqui está uma visão geral simples de cada serviço usado pela aplicação:

- **App Service:** Hospeda o aplicativo de chat, garantindo que ele possa responder aos prompts enviados pelos usuários a partir dos dados relevantes carregados.
- **Application Insights:** Monitoriza proativamente o desempenho da aplicação, cuidando dos problemas antes que se tornem significativos.
- **Document Intelligence:** Utilizando IA, compreende o conteúdo nos documentos carregados, tornando as informações do usuário mais esclarecedoras.
- **Azure OpenAI:** Melhora as capacidades do aplicativo com compreensão de linguagem natural e respostas.
- **Shared Dashboard:** Atua como um hub central para colaboração em equipe e compartilhamento de dados.
- **Smart Detector Alert Rule:** Monitoriza a saúde da aplicação e notifica a equipe caso surjam problemas.
- **Search Service:** Oferece aos usuários uma funcionalidade de busca dinâmica e eficiente dentro da aplicação.
- **Log Analytics Workspace:** Rastrea e analisa a atividade da aplicação, oferecendo insights e logs valiosos.
- **App Service Plan:** Otimiza a alocação de recursos para um desempenho ideal do aplicativo.
- **Storage Account:** Armazena com segurança os dados que serão utilizados pelo serviço Azure AI Search para fornecer as entradas ao aplicativo de chat.

Juntos, estes serviços criam uma aplicação de chat responsivo que combina recursos de IA, capacidades de monitorização e gestão eficiente de dados, proporcionando à Contoso uma experiência de usuário excepcional.

## Architecture diagram:

![](../media/Active-image258.png)


## Pré-requisitos

Certifique-se de ter o seguinte no ambiente integrado fornecido pelo CloudLabs:

> Nota: Os pré-requisitos estão pré-configurados no ambiente CloudLabs. Se você estiver usando seu computador ou laptop pessoal, verifique se todos os pré-requisitos essenciais estão instalados para concluir este Hackathon.


  - [Subscrição de Azure](https://azure.microsoft.com/en-us/free/)
  - Acesso ao [Azure OpenAI](https://aka.ms/oai/access) com os seguintes modelos:
    - gpt-35-turbo
    - text-embedding-ada-002
   - Bicep 
   - Azd 
   - Poweshell 7 

## Objetivos do Desafio:

> **Nota**: Ao provisionar serviços neste desafio, certifique-se de usar o grupo de recursos com o nome rg-activategenai.

> **Importante** : Execute o Powershell 7 +.

1. **Clone o Repositório:**
   - Clone o repositório Active Gen AI: `https://github.com/Azure-Samples/azure-search-openai-demo`.
   - Verifique que Bicep está instalado na sua maquina. Se não estive instalar, siga o [guia de instalação de Bicep](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)).

1. **Provisionar a aplicação AI-Powered Chat App:**

    - Implemente uma aplicação de chat com inteligência artificial no Azure, integrando os serviços de IA do Azure e o Azure Search, e garantindo que ele esteja acessível e funcional após a implementação.
    
      > Dica : Comece garantindo que você tem as credenciais adequadas. Este comando o guiará pelo processo de login na sua conta Azure usando o Azure Developer CLI. Após a autenticação, você terá acesso aos seus recursos Azure.
    
      > Dica : Inicialize o seu projeto com um template específico. Este comando ajudará a configurar o ambiente do seu projeto.

      > Dica : Coloque o seu projeto em ação. Este comando provisionará a sua aplicação no Azure, configurando automaticamente todos os recursos e configurações necessários.

   <validation step="36681298-5586-4465-ae71-717f0f69e6dc" />

## Critério de Sucesso:

- Provisionamento bem sucedido da aplicação de Chat.
- Verifique se os seguintes serviços estão provisionados com sucesso no Grupo de Recursos.
  - App Service
  - Document Intelligence
  - Azure OpenAI
  - Shared Dashboard
  - Smart Detector Alert Rule
  - Search Service
  - Log Analytics Workspace
  - App Service Plan
  - Storage Account
- VVerifique se os dados foram populados no container com o nome `content`.
- O Chat App deve estar acessível usando o Azure App Service.

## Recursos Adicionais:

-  Consulte  [Azure Search OpenAI demo GitHub repository](https://github.com/cmendible/azure-search-openai-demo) para mais detalhes com a arquitectura.
-  [Azure copilot](https://learn.microsoft.com/en-us/azure/copilot/overview)
