# Desafio 1: Implementar Azure OpenAI e Modelos LLM

### Tempo Estimado: 30 minutos

## Introdução:

**Serviço Azure OpenAI** fornece acesso à API REST dos modelos de linguagem do OpenAI, incluindo o GPT-4, GPT-4 Turbo with Vision, a série de modelos gpt-35-turbo e Embeddings. Além disso, as novas séries de modelos `GPT-4` e `gpt-35-turbo` estão agora disponíveis para uso geral.

Um **Large Language Model (LLM)** é um algoritmo de deep learning capaz de realizar uma variedade de tarefas de processamento de linguagem natural (NLP). Os modelos de linguagem de grande porte utilizam modelos transformers e são treinados com conjuntos de dados massivos — daí o termo "grande". Isso os capacita a reconhecer, traduzir, prever ou gerar texto ou outros conteúdos.

A **Contoso Ltd.**, é uma empresa líder em tecnologia, está buscando aprimorar suas operações de suporte ao produto. Eles recebem um grande número de chamadas diariamente, o que resulta em tempos de espera mais longos e uma diminuição na satisfação do cliente. Para resolver esse problema, a Contoso está planejando implementar uma solução com inteligência artificial que possa lidar com as consultas dos clientes de maneira eficaz e eficiente.

A **Contoso Ltd.** decidiu implementar o serviço Azure OpenAI juntamente com seus modelos Large Language Models (LLM), como o `gpt-35-turbo` e o `text-embedding-ada-002`. Estes modelos são conhecidos pela sua capacidade de processar e gerar texto semelhante ao humano, tornando-os ideais para essa aplicação.

Como parte deste desafio, sua tarefa é criar um serviço Azure OpenAI e implementar modelos Large Language Models (LLM). Os LLMs incluem **gpt-35-turbo** e **text-embedding-ada-002**.

### Acesse o Portal do Azure

1. Para acessar o portal do Azure, abra uma janela privada/anônima no seu navegador e navegue até o Portal do Azure.

1. Na aba **Entrar no Microsoft Azure**, você verá uma tela de entrada. Insira o seguinte e-mail/nome de usuário e clique em **Avançar**.

   - **E-mail/Nome de usuário:** <inject key="AzureAdUserEmail"></inject>

1. Agora insira a seguinte senha e clique em **Entrar**.

   - **Senha:** <inject key="AzureAdUserPassword"></inject>

1. Se um pop-up **Continuar conectado?** aparecer, clique em Não.

1. Se um pop-up **Você tem recomendações gratuitas do Azure Advisor!** aparecer, feche a janela para continuar com o desafio.

1. Se uma janela pop-up **Bem-vindo ao Microsoft Azure** aparecer, clique em **Talvez mais tarde** para pular o tour.

## Pré-requisitos

Certifique-se de ter o seguinte do ambiente integrado fornecido pelo CloudLabs:

> Nota: Os pré-requisitos estão pré-configurados no ambiente CloudLabs. Se você estiver usando seu computador ou laptop pessoal, verifique se todos os pré-requisitos essenciais estão instalados para concluir este Hackathon.

  - [Assinatura de Azure](https://azure.microsoft.com/en-us/free/)
  - Acesso ao [Azure OpenAI](https://aka.ms/oai/access) com os seguintes modelos:
    - gpt-35-turbo
    - text-embedding-ada-002
    - gpt-4

## Objetivos do Desafio:

1. **Implementação do serviço Azure OpenAI:**
   - Configure uma instância do Azure OpenAI Service com o tamanho do SKU Standard `S0`.
   - Implemente no grupo de recursos existente com o nome - **<inject key="Resource Group Name"/>**
   - Obtenha a chave e o Endpoint necessários do Azure OpenAI.

   <validation step="ad89350a-8a60-4fcd-88f1-38493f6f74f7" />

2. **Implementar Modelos de Linguagem Grande (LLM):**
   - O Azure OpenAI fornece um portal baseado na web chamado **Azure OpenAI Studio** que você pode usar para implementar, gerenciar e explorar modelos. Você começará sua exploração do Azure OpenAI usando o Azure OpenAI Studio para Implementar um modelo.
   - Inicie o Azure OpenAI Studio a partir do painel de overview e implemente três Modelos OpenAI, ou seja, `gpt-35-turbo` e `text-embedding-ada-002`, com uma capacidade TPM de 20k.

   <validation step="22eb5371-de7d-426c-be18-594c9e05c080" />

## Critério de Sucesso:

- Verifique se o serviço Azure OpenAI está implementado com sucesso no grupo de recursos existente - <inject key="Resource Group Name"/>.
- Verifique se os Modelos de Linguagem Grande (LLM), `gpt-35-turbo` e `text-embedding-ada-002`,  estão implementados com sucesso no serviço Azure OpenAI.

## Recursos Adicionais:

- Consulte a [documentação do serviço Azure OpenAI](https://learn.microsoft.com/en-us/azure/ai-services/openai/) para orientações sobre a criação do serviço.
