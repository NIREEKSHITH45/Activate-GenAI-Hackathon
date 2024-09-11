# Desafio 02: Implementar Document Search usando o Azure AI Search

### Tempo Estimado: 120 minutes

## Introdução:

A Contoso está a usar o Azure AI Search e o Azure OpenAI (GPT-3.5-Turbo) para criar uma solução de busca de documentos que não só torna os documentos de suporte facilmente pesquisáveis, mas também usa um modelo de linguagem da OpenAI para entender e processar as consultas dos clientes de forma eficaz. Essa integração permitirá que a Contoso forneça respostas precisas e relevantes, otimizando seus serviços de suporte.

O Azure AI Search será usado para organizar e indexar os grandes volumes de documentos de suporte da Contoso, enquanto o Azure OpenAI interpretará as consultas dos clientes para a pesquisa semântica, melhorando a relevância dos resultados. Essa fusão de tecnologias ajudará na tomada de decisões informadas e na extração de informações vitais a partir de dados não estruturados, proporcionando, assim, um sistema de recuperação de informações contínuo que melhora a experiência de suporte ao cliente da Contoso.

Neste desafio, você clonará um repositório fornecido para lançar as bases para o Azure AI Search, integrá-lo aos Serviços de IA do Azure e criar um indexador poderoso para capacidades avançadas de busca. Por fim, você trabalhará no refinamento das consultas de busca e iniciará o desenvolvimento de um aplicativo de pesquisa que aproveite tanto o Azure AI Search quanto o modelo de linguagem da OpenAI.

## Objetivos do Desafio:

> **Importante**: Quando criar serviços neste desafio, verifique que usa o grupo de recursos com o nome **<inject key="Resource Group Name"/>** !

1. **Clone o Repositório:**
   - Clone o repositório no Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.
     > Dica : Você pode utilizar o seguinte repositório, https://github.com/MicrosoftLearning/AI-102-AIEngineer, para explorar e executar os cenários listados abaixo

2. **Configurar Recursos do Azure:**
   - Crie um recurso de Azure AI Search com o SKU Basic.
   - Crie um serviço Azure AI com o SKU Standard S0.
   - Crie uma Conta de Armazenamento do Azure com o nível Standard.

3. **Preparar o Upload de Documentos:**
   - No Visual Studio Code, dentro do repositório clonado, navegue para a pasta 22-create-a-search-solution.
   - Edite o arquivo UploadDocs.cmd batch com os valores necessários.

4. **Executar o Script de Upload:**
   - Abra e examine o arquivo UploadDocs.cmd usando o VS Code.
   - Execute o arquivo para garantir que os recursos e arquivos necessários sejam criados no Azure.
     > Dica: Certifique-se de ter as credenciais corretas. Este comando irá guiá-lo para fazer login na sua conta do Azure usando o Azure CLI.

5. **Importação e Indexação de Dados:**
   - Importe dados para o AI Search usando o Blob Storage.
   - Conectar os Serviços de IA do Azure e personalize o índice.
   - Crie um indexador para a integração de dados.

6. **Consultar Documentos Indexados:**
   - Ajuste as consultas para incluir contagens e campos específicos..
   - Defina os componentes de busca.
   - Consulte o índice modificado para recuperar informações refinadas e direcionadas.
     > Dica: Refine as suas consultas para contar resultados, escolha campos específicos, configure componentes de busca e use o índice atualizado para obtenção de informações detalhadas e focadas.

7. **Provisionar e Testar uma Aplicação de Cliente de Busca:**
   - Atualize as configurações do aplicativo e configure o aplicativo web.
   - Execute o aplicativo localmente para testar a funcionalidade de busca.
   > Dica: A aplicação suporta múltiplos idiomas; escolha o que melhor atende aos requisitos do seu projeto. Ajuste as configurações da aplicação e configure a aplicação web conforme necessário. Em seguida, execute a aplicação localmente para testar a funcionalidade de busca antes de prosseguir com a implementação.

   <validation step="4240749f-2035-4086-92d1-0ff181674a07" />
   
## Critério de Sucesso:

Para concluir este desafio com sucesso, você deve:

   - Provisionar o serviço Azure Search e a Conta de Armazenamento em Azure.
   - Adicionar dados à conta de armazenamento.
   - Indexar os documentos no Azure AI Search usando o portal de Azure.
   - Personalizar o índice e configurar o indexador no Azure AI Search.
   - Modificar e explorar componentes de busca usando definições em JSON.
   - Utilizar o SDK do Azure AI Search para criar uma aplicação cliente de busca.
   - Executar o aplicativo web localmente, realizar buscas e refinar os resultados de busca de forma eficaz.

## Recursos Adicionais:

- Consulte [O que é Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) para referência.
- [O que são Índices no Azure AI Search?](https://learn.microsoft.com/en-us/azure/search/search-what-is-an-index)
- [Busca de texto em documentos em grande escala usando o Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)
