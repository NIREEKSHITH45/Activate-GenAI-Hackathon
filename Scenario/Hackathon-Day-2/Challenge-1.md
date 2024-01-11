# Challenge 01: Deploy Azure OpenAI Service

## Introduction

Welcome to the Challenge of Deploying Azure OpenAI Service and LLM Models! The objective of this challenge is to evaluate your proficiency in setting up and deploying Azure OpenAI Service along with its Large Language Models (LLM).

Contoso Ltd, a leading technological firm, is seeking to enhance its product support operations using smart technology. In this challenge, the team will learn how to use Azure OpenAI services and large language models. They'll set up these tools, ask the AI questions, and see how it responds. The focus will be on using models like `gpt-3.5-turbo` and `text-embedding-ada-002` to make customer service better. The goal is to understand how to use these advanced tools well and make them work for Contoso's needs.

As a Developer, your task is to assist Contoso Ltd in setting up and deploying the Azure OpenAI Service and the LLMs such as **gpt-35-turbo** and **text-embedding-ada-002**. 

## Accessing Azure portal

1. To access the Azure portal, open a private/incognito window in your browser and navigate to **[Azure Portal](https://portal.azure.com)**.

1. On the **Sign in to Microsoft Azure** tab, you will see a login screen. Enter the following email/username and then click on **Next**. 
   * Email/Username: <inject key="AzureAdUserEmail"></inject>
        
1. Now enter the following password and click on **Sign in**.
   * Password: <inject key="AzureAdUserPassword"></inject>
     
1. If you see the pop-up **Stay Signed in?**, click No.

1. If you see the pop-up **You have free Azure Advisor recommendations!**, close the window to continue the lab.

1. If a **Welcome to Microsoft Azure** pop-up window appears, click **Maybe Later** to skip the tour.
   
1. Now you will see the Azure Portal Dashboard. Click on **Resource groups** from the Navigate panel to see the resource groups.
  
1. Confirm you have a resource group **Activate-GenAI-<inject key="Deployment ID"/>** present, as shown in the below screenshot. You need to use the **Activate-GenAI-<inject key="Deployment ID"/>** resource group throughout this challenge.

## Prerequisites

Make sure you have the following from the CloudLabs-provided integrated environment:
- [Azure Subscription](https://azure.microsoft.com/en-us/free/)
- [Azure OpenAI](https://aka.ms/oai/access) access with the following models:
  - gpt-35-turbo
  - text-embedding-ada-002

## Challenge Tasks

1. **Azure OpenAI Service Deployment:**
   - Set up an Azure OpenAI Service instance with SKU size Standard `S0` in your Azure portal.
   - Obtain the necessary Azure OpenAI Key and Endpoint.

2. **Deploy Large Language Models (LLM):**
   - Azure OpenAI provides a web-based portal named **Azure OpenAI Studio** that you can use to deploy, manage, and explore models. You'll start your exploration of Azure OpenAI by using Azure OpenAI Studio to deploy a model.
   - Launch Azure OpeanAI Studio from the overview pane and deploy three OpenAI Models, i.e, `gpt-35-turbo` and `text-embedding-ada-002` with a TPM capacity of 40k.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify that Azure OpenAI Service is successfully deployed.
- Verify that the Large Language Models (LLM), `gpt-35-turbo` and `text-embedding-ada-002`, are successfully deployed with the Azure OpenAI Service.

## Learning Resources

- Refer to the [Azure OpenAI Service documentation](https://learn.microsoft.com/en-us/azure/ai-services/openai/) for guidance on deploying the service.
