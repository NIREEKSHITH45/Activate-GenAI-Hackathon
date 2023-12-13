# Challenge 4: Implement Security and Monitoring

## Introduction

In this challenge, you will explore on Monitoring Azure OpenAI Service using Log Analytics workspace and using Azure API Management.

## Description

In this challenge, you will be Configuring Diagnostic Settings, Deploying an OpenAI model, Analyzing logs using Kusto Queries and Monitoring OpenAI prompts using Azure API Management and Log Analytics workspace.

## Success criteria:

### 1: Explore content filters

1. In Azure OpenAI Studio, view the **Content filters** page.
1. From **Create customized content filter** review the default settings for a content filter.
1. Observe that the default settings allow **low** severity language for each category. You can create a more restrictive custom filter by applying filters to one or more **low** severity levels.


### 2: Monitoring Azure OpenAI Service using Kusto query

1. Login to Azure portal, create Azure OpenAI service with SKU size `S0`.
2. Add diagnostic setting to monitor using Log Analytics workspace.
3. Launch Azure OpeanAI Studio from overview pane and deploy OpenAI Model i.e, `text-embedding-ada-002` with the TPM capacity of 20k.
4. From **Playground** section, create the **chat** deployment.
5. Add an example in the Assistant setup pane.
6. Use the pre-created Log Analytics workspace that was used to configure with diagnostics for your Azure OpenAI resource.
7. Enter the Kusto query into the edit region for analysis of Azure Diagnostics data about your resource.

### 3: Monitoring OpenAI prompts using Azure API Management

1. From Azure OpenAI service, copy the values of the  `key1` and `endpoint` and Paste it into notepad.\
2. Create API Management Services from azure portal.
3. Create Named Values from the API Management Services using the Azure OpenAI key.
4. Create Backends from the API Management Service using the Azure OpenAI endpoint and using Named Values that you created earlier.
5. Import a new API into the API Management service i.e. OpenAPI and keep OpenAPI specification: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/specification/cognitiveservices/data-plane/AzureOpenAI/inference/stable/2023-05-15/inference.json.
6. Create a new policy with POST operation i.e. Creates a completion for the chat message.
7. Select the code editor, create a new inbound policy by adding the following code at line 16:
   <set-backend-service backend-id="backend-endpoint" />
   Note: Here the value backend-endpoint refers to the newly created backend, pointing to the runtime URL - the Azure OpenAI endpoint.
8. Configure to call the OpenAI API through the API Management Service by setting the Number of payload bytes to log (up to 8192) to 8192 in Azure Monitor of newly created API.
9. Run a POST operation to test the functionality of the added API by Selecting the newly added API. Click on the the POST operation that Creates a completion for the chat message. In the Request body provide : {"model":"gpt-35-turbo","messages":[{"role":"user","content":"Hello! What does an API Management Service in Azure do?"}]}.
10. Naviagate back to the API Management Service and click on Logs and Within the New Query 1 tab, draft a new query such that and run it:
    
    ```
    ApiManagementGatewayLogs
    | where tolower(OperationId) in ('completions_create','chatcompletions_create')
    | where ResponseCode  == '200'
    | extend modelkey = substring(parse_json(BackendResponseBody)['model'], 0, indexof(parse_json(BackendResponseBody)['model'], 
    '-', 0, -1, 2))
    | extend model = tostring(parse_json(BackendResponseBody)['model'])
    | extend prompttokens = parse_json(parse_json(BackendResponseBody)['usage'])['prompt_tokens']
    | extend completiontokens = parse_json(parse_json(BackendResponseBody)['usage'])['completion_tokens']
    | extend totaltokens = parse_json(parse_json(BackendResponseBody)['usage'])['total_tokens']
    | extend ip = CallerIpAddress
    | where model !=  ''
    | summarize
        sum(todecimal(prompttokens)),
        sum(todecimal(completiontokens)),
        sum(todecimal(totaltokens)),
        avg(todecimal(totaltokens))
        by ip, model
    ```

11. Let's run an other query to monitor prompt completions.
    - Replace the contents of the query editor with the following KQL to log the prompts and run it.
    ```
    ApiManagementGatewayLogs
    | where tolower(OperationId) in ('completions_create','chatcompletions_create')
    | where ResponseCode  == '200'
    | extend model = tostring(parse_json(BackendResponseBody)['model'])
    | extend prompttokens = parse_json(parse_json(BackendResponseBody)['usage'])['prompt_tokens']
    | extend prompttext = substring(parse_json(parse_json(BackendResponseBody)['choices'])[0], 0, 100)
    ```

## Summary

In this challenge, you have explored and gained information on Monitoring Azure OpenAI Service using different methods.
