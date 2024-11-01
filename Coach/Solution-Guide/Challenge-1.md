# Desafio 01: Implantar o Azure OpenAI Service e os modelos LLM
### Tempo estimado: 30 minutos
## Introdução

Bem-vindo ao Desafio Implantar o Azure OpenAI Service! Este desafio foi criado para testar suas habilidades na implantação do Azure OpenAI Service e seus Large Language Models (LLM). O objetivo é configurar o OpenAI Service e implantar modelos LLM.

O **Azure OpenAI Service** fornece acesso REST API aos poderosos modelos de linguagem do OpenAI, incluindo as séries de modelos GPT-4, GPT-4 Turbo with Vision, `gpt-35-turbo` e Embeddings. Além disso, as novas séries de modelos `GPT-4` e `gpt-35-turbo` já atingiram a disponibilidade geral.

Um **Large Language Model (LLM)** é um algoritmo de aprendizado profundo que pode executar uma variedade de tarefas de processamento de linguagem natural (NLP). Os grandes modelos de linguagem usam modelos transformadores e são treinados usando conjuntos de dados massivos — portanto, grandes. Isso permite que eles reconheçam, traduzam, prevejam ou gerem texto ou outro conteúdo.

**Contoso Ltd.**, uma empresa líder em tecnologia, está buscando aprimorar suas operações de suporte a produtos. Eles recebem um grande número de consultas diariamente, o que resulta em tempos de espera mais longos e menor satisfação do cliente. Para resolver isso, a Contoso está planejando implementar uma solução com tecnologia de IA que pode lidar com as consultas dos clientes de forma eficaz e eficiente.

Eles escolheram implantar o Azure OpenAI Service junto com seus Large Language Models (LLM), como `gpt-35-turbo` e `text-embedding-ada-002`. Esses modelos são conhecidos por sua capacidade de processar e gerar texto semelhante ao humano, tornando-os ideais para esta aplicação.

Como parte deste desafio, sua tarefa é criar um serviço Azure OpenAI e implantar Large Language Models (LLM). Os Large Language Models incluem **gpt-35-turbo** e **text-embedding-ada-002**.

## Descrição

Sua tarefa é implantar o Azure OpenAI Service e implantar Large Language Models (LLM).

### Acessando o portal do Azure

>**Importante**: Você pode encontrar o nome de usuário e a senha no ambiente navegando até a guia **Ambiente** no painel esquerdo e, em seguida, copiar o **Nome de Usuário do Azure** e a **Senha do Azure**, que serão necessários para entrar no portal do Azure em etapas posteriores, e você pode registrar o **Deployment ID**, que pode ser usado para fornecer um nome exclusivo aos recursos durante a implantação.

>**Observação**: Os valores de números e IDs podem variar, ignore os valores nas capturas de tela e copie os valores da guia **Ambiente**.

![](../media/1-11-24(18).png)

1. Para acessar o portal do Azure, dentro do labvm abra o **Microsoft Edge** e navegue até o [Portal do Azure](https://portal.azure.com/).

1. Na aba **Entrar no Microsoft Azure**, você verá uma tela de login. Insira o seguinte e-mail/nome de usuário e clique em **Avançar**

    - **E-mail/Nome de usuário:** <inject key="AzureAdUserEmail"></inject>

        ![](../media/1-11-24(1).png)

1. Agora insira a seguinte senha e clique em **Entrar**.

    - **Senha:** <inject key="AzureAdUserPassword"></inject>

        ![](../media/1-11-24(2).png)

1. Quando a janela **Ação necessária** aparecer, clique em **Perguntar depois**.

1. Se você vir o pop-up **Continuar conectado?**, clique em **Não**.

    ![](../media/1-11-24(3).png)

1. Se uma janela pop-up **Bem-vindo ao Microsoft Azure** aparecer, clique em **Cancelar** para pular o tour.

    ![](../media/1-11-24(4).png)

## Pré-requisitos

- [Assinatura do Azure](https://azure.microsoft.com/en-us/free/)
- [Azure OpenAI](https://aka.ms/oai/access) o acesso está disponível com os seguintes modelos:
- gpt-35-turbo
- text-embedding-ada-002

## Guia de soluções

### Tarefa 1: Implantar um serviço Azure Open AI

Nesta tarefa, você aprenderá o processo de configuração e implantação do serviço Azure OpenAI no Portal do Azure.

1. Na página Portal do Azure, na caixa Pesquisar recursos, serviços e documentos (G+/) na parte superior do portal, insira **OpenAI (1)** e selecione **OpenAI (2)** em serviços.

    ![](../media/1-11-24(5).png)

1. Na lâmina **Azure AI Services | Azure OpenAI**, clique em **+ Criar (2)**.

    ![](../media/1-11-24(6).png)

1. Especifique os seguintes detalhes para implantar o serviço Azure Open AI e clique em **Próxima (6)** três vezes.

    | **Opção** | **Valor** |
    | ------------------ | ----------------------------------------------------- |
    | Assinatura | Deixar padrão **(1)** |
    | Grupo de recursos | **Activate-GenAI (2)** |
    | Região | Use o mesmo local do grupo de recursos **(3)** |
    | Nome | Use o formato **OpenAI-xxxxxx** (substitua **xxxxxx** pelo **Deployment ID**) **(4)** |
    | Tipo de preço | **Standard S0 (5)** |

    >**Observação**: aqui, xxxxxx se refere ao **Deployment ID** que você registrou na última tarefa.

    ![](../media/1-11-24(7).png)

1. Uma vez que a validação for bem-sucedida no **Examinar + enviar**, clique em **Criar** e aguarde a conclusão da implantação.

    ![](../media/1-11-24(8).png)

    ![](../media/1-11-24(9).png)

### Tarefa 2: Implantar um modelo

O Azure OpenAI fornece um portal baseado na Web chamado Azure OpenAI Studio, que você pode usar para implantar, gerenciar e explorar modelos. Você começará sua exploração do Azure OpenAI usando o Azure OpenAI Studio para implantar um modelo.

1. Na página do Portal do Azure, na caixa Pesquisar recursos, serviços e documentos (G+/) na parte superior do portal, insira **OpenAI (1)** e selecione **OpenAI (2)** em serviços.

    ![](../media/1-11-24(5).png)

1. Na lâmina **Azure AI services | OpenAI (1)**, selecione **OpenAI-<inject key="Deployment-id" enableCopy="false"></inject> (2)**.

    ![](../media/1-11-24(10).png)

1. No painel de recursos do Azure OpenAI, selecione **Visão geral (1)** no menu à esquerda e clique em **Go to Azure OpenAI Studio (2)**. Isso o levará ao Azure AI Studio.

    ![](../media/1-11-24(11).png)

    >**Observação:** se o pop-up Discover an even better Azure AI Studio experience aparecer, clique em Fechar para descartá-lo.

1. Clique em **Implantações (1)** em **Recursos compartilhados** e selecione **+ Implante o modelo (2)**. Em seguida, **Implantar o modelo básico (3)**.

    ![](../media/1-11-24(12).png)

1. Pesquise por **gpt-35-turbo (1)** e clique em **Confirmar (2)**.

    ![](../media/1-11-24(13).png)

1. Na interface pop-up do modelo Deploy, clique em **Personalizar** e insira os seguintes detalhes:

    - **Nome da implantação (1)**: text-turbo
    - **Tipo de implantação (2)**: Standard
    - **Versão do modelo (3)**: 0301(Padrão)
    - **Limite de Taxa de Tokens por Minuto (4)**: 20K
    - **Habilitar cota dinâmica (5)**: Habilitado
    - Clique em **Implantar (6)**

        ![](../media/1-11-24(14).png)

        >**Observação:** se a opção **Personalizar** não aparecer, você pode inserir diretamente os detalhes da implantação do modelo.

1. Clique em **Implantações (1)** em **Recursos compartilhados** e selecione **+ Implante o modelo (2)**. Em seguida, **Implantar o modelo básico (3)**.

    ![](../media/1-11-24(12).png)

1. Pesquise por **text-embedding-ada-002 (1)** e clique em **Confirmar (2)**.

    ![](../media/1-11-24(15).png)

1. Na interface pop-up do modelo Deploy, clique em **Personalizar** e insira os seguintes detalhes:

    - **Nome da implantação (1)**: text-ada-002
    - **Tipo de implantação (2)**: Standard
    - **Versão do modelo (3)**: 2 (Padrão)
    - **Limite de Taxa de Tokens por Minuto (4)**: 20K
    - **Habilitar cota dinâmica (5)**: Habilitado
    - Clique em **Implantar (6)**

        ![](../media/1-11-24(16).png)

        >**Observação:** se a opção **Personalizar** não aparecer, você pode inserir diretamente os detalhes da implantação do modelo.

1. De volta à página Implantações, você deve ver os modelos de implantação **text-turbo** e **text-ada-002** criados.

    ![](../media/1-11-24(17).png)

## Critérios de sucesso:

- Implantação bem-sucedida do Azure OpenAI Service.

- Implantação de Large Language Models (LLM) com o OpenAI Service.

## Recursos adicionais:

- Consulte a [documentação do Azure OpenAI Service](https://learn.microsoft.com/en-us/azure/ai-services/openai/) para obter orientação sobre como implantar o serviço.

### Prossiga com o próximo desafio clicando em **Avançar**>>.