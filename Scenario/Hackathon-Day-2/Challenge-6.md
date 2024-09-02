# Desafio-06: Implementar Monitorização e Registro de Logs do Azure OpenAI Usando o Serviço API Management

### Tempo Estimado: 90 minutos

## Introdução:

Com base no sucesso em melhorar o aplicativo de chat com IA da Contoso com processamento de documentos serverless, seu próximo objetivo é operacionalizar essas soluções do Azure OpenAI com mecanismos robustos de monitorização e registro de logs. Neste desafio, você se aprofundará nas complexidades de configurar e analisar sistemas avançados de monitorização usando o Azure API Management Service e o Log Analytics workspace. Esta é uma etapa crucial para garantir o funcionamento e a manutenção adequados das soluções de IA que você desenvolveu, fornecendo insights valiosos sobre o desempenho do sistema e as interações dos usuários.

Sua tarefa é implementar uma monitorização abrangente para o serviço Azure OpenAI, aproveitando as configurações de diagnóstico e consultas Kusto para uma análise detalhada de logs. Além disso, você integrará o API Management Service para supervisionar as conclusões de mensagens de chat e analisar mais detalhadamente os prompts e os resultados. Esse nível de monitorização é essencial para a Contoso manter um aplicativo de chat com IA de alta qualidade, eficiente e fácil de usar.


## Objetivos do Desafio:

> **Importante**:Ao provisionar os serviços neste desafio, certifique-se de usar o grupo de recursos com o nome **rg-activategenai**!

1. **Monitorização do Serviço Azure OpenAI:**
   - Configure as definições de diagnóstico para os serviços existentes do Azure OpenAI.
   - Realize a análise de logs utilizando consultas Kusto para monitorar o desempenho e o uso do serviço.
     
2. **Monitorização dos prompts do OpenAI usando o Azure API Management:**
   - Utilize consultas Kusto dentro do API Management para uma análise abrangente de logs, focando nas conclusões de mensagens de chat e interações de prompts.


   <validation step="9f41c452-42da-4841-9ee1-0c8fcbdbd9ad" />
  
## Critério de Sucesso:

Os participantes serão avaliados com base nos seguintes critérios:

1. Configurar com sucesso o serviço Azure OpenAI com as configurações de diagnóstico apropriadas e analisar seus logs usando consultas Kusto.
2. Criar e configurar eficazmente o Azure API Management, garantindo visibilidade clara dos logs e prompts do OpenAI por meio de uma análise detalhada com consultas Kusto.

## Recursos Adicionais:

- Consulte [How to Configure Azure API Management Service](https://github.com/Azure-Samples/openai-python-enterprise-logging/blob/main/README.md) para mais informações.
- Consulte este video sobre [Logging & Monitoring Everything in Azure OpenAI with API Management Service](https://github.com/Azure-Samples/openai-python-enterprise-logging/blob/main/README.md).
- Consulte o seguinte tutorial [Kusto Queries](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-tutorial) para mais informações.
