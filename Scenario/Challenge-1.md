# Challenge 1: Deploy Azure OpenAI Service and LLM Models


## Introduction

In this challenge you will explore on Azure OpenAI service and different deployment models.

## Description

In this challenge, you will be creating Azure OpenAI and deploy various model with different base model.

### Accessing Azure portal

1. To access the Azure portal, open a private/incognito window in your browser and navigate to Azure Portal.

1. On the **Sign in to Microsoft Azure tab** you will see a login screen, enter the following email/username and then click on **Next**.

   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

1. If you see the pop-up **Stay Signed in?**, click No.

1. If you see the pop-up **You have free Azure Advisor recommendations!**, close the window to continue the lab.

1. If a **Welcome to Microsoft Azure** popup window appears, click **Maybe Later** to skip the tour.

## Success criteria:

### 1: Create the Azure OpenAI service

1. In the **Azure portal**, search for **OpenAI** and select **Azure OpenAI**.

2. From **Azure AI Services | Azure OpenAI** blade, create an **Azure OpenAI** resource.

3. Wait for deployment to complete. Then go to the deployed Azure OpenAI resource in the Azure portal.

### 2: Deploy a model in Azure OpenAI

Azure OpenAI provides a web-based portal named **Azure OpenAI Studio**, that you can use to deploy, manage, and explore models. You'll start your exploration of Azure OpenAI by using Azure OpenAI Studio to deploy a model.

1. Login to Azure portal, select Azure OpenAI service that you have created in previous challenge.

2. Launch Azure OpeanAI Studio from overview pane and deploy three OpenAI Models i.e, `gpt-4`, `gpt-35-turbo` and `text-embedding-ada-002` with the TPM capacity of 20k.
  
5. This will deploy the models which you will be playing around with as you proceed.

## Summary

In this challenge, you have explored and gained information on Azure OpenAI service and Deploying a model in Azure OpenAI service.
