# Challenge 01: Deploy Azure OpenAI Service and LLM Models

## Introduction

Welcome to the Deploy Azure OpenAI Service and LLM Models Challenge! In this challenge, your proficiency will be evaluated in deploying the Azure OpenAI Service along with its Large Language Models (LLM). 

The objective will be to successfully configure the OpenAI Service and deploy the specified LLM models.

### Accessing Azure portal

1. To access the Azure portal, open a private/incognito window in your browser and navigate to Azure Portal.

1. On the **Sign in to Microsoft Azure tab**, you will see a login screen. Enter the following email/username and then click on **Next**.

   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

1. If you see the pop-up **Stay Signed in?**, click No.

1. If you see the pop-up **You have free Azure Advisor recommendations!**, close the window to continue the lab.

1. If a **Welcome to Microsoft Azure** pop-up window appears, click **Maybe Later** to skip the tour.

## Prerequisites

Make sure you have the following from the CloudLabs provided integrated environment:
- [Azure Subscription](https://azure.microsoft.com/en-us/free/)
- [Azure OpenAI](https://aka.ms/oai/access) access with the following models:
  - gpt-35-turbo
  - text-embedding-ada-002

## Challenge Objectives:

1. **Azure OpenAI Service Deployment:**
   - Set up an Azure OpenAI Service instance with SKU size Standard `S0` in your Azure portal.
   - Obtain the Azure OpenAI Key and Endpoint.

2. **Deploy Large Language Models (LLM):**
   - Azure OpenAI provides a web-based portal named **Azure OpenAI Studio** that you can use to deploy, manage, and explore models. You'll start your exploration of Azure OpenAI by using Azure OpenAI Studio to deploy a model.
   - Launch Azure OpeanAI Studio from the overview pane and deploy the OpenAI Models, i.e, `gpt-35-turbo` and `text-embedding-ada-002` with TPM (Tokens per Minute Rate Limit) capacity of 20k.
   > Hint: Ensure to click on **Advance options** to define TPM capacity while deploying the Model.

## Success Criteria:

- Successfully deployed the Azure OpenAI Service.
- Successfully deployed a Large Language Model (LLM) with the OpenAI Service.

## Additional Resources:

- Refer to the [Azure OpenAI Service documentation](https://learn.microsoft.com/en-us/azure/ai-services/openai/) for guidance on deploying the service.
