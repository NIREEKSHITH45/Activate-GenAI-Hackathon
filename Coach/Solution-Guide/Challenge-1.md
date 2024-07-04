# Challenge 01: Deploy Azure OpenAI Service and LLM Models
### Estimated Time: 30 minutes
## Introduction

Welcome to the Deploy Azure OpenAI Service Challenge! This challenge is designed to test your skills in deploying the Azure OpenAI Service and its Large Language Models (LLM). The goal is to set up the OpenAI Service and deploy LLM models.

**Azure OpenAI Service** provides REST API access to OpenAI's powerful language models, including the GPT-4, GPT-4 Turbo with Vision, `gpt-35-turbo`, and Embeddings model series. In addition, the new `GPT-4` and `gpt-35-turbo` model series have now reached general availability.

A **Large Language Model (LLM)** is a deep learning algorithm that can perform a variety of natural language processing (NLP) tasks. Large language models use transformer models and are trained using massive datasets—hence, large. This enables them to recognize, translate, predict, or generate text or other content.

**Contoso Ltd.**, a leading technological firm, is seeking to enhance its product support operations. They receive a vast number of queries daily, which results in longer waiting times and decreased customer satisfaction. To address this, Contoso is planning to implement an AI-powered solution that can handle customer inquiries effectively and efficiently.

They have chosen to deploy Azure OpenAI Service along with its Large Language Models (LLM), like `gpt-35-turbo` and `text-embedding-ada-002`. These models are known for their capability of processing and generating human-like text, making them ideal for this application.

As a part of this challenge, your task is to create an Azure OpenAI service and deploy Large Language Models (LLM). The Large Language Models include **gpt-35-turbo** and **text-embedding-ada-002**.

## Description

Your task is to deploy the Azure OpenAI Service and deploy Large Language Models (LLM).

### Accessing the Azure portal

>**Important**: You can find the Username and Password within the environment by navigating to the **Environment** **(1)** tab in the left pane then copy the **Azure Username** **(2)** and **Azure Password** **(3)**, which will be required for signing into the Azure portal in later steps and you can record the **Deployment Id** **(4)**, which can be used to provide a unique name to the resources during deployment.

>**Note**: Numbers and ID's values may vary kindly ignore values in screenshots and copy values from **Environment** tab.

 ![](../media/Active-image19.png)
 ![](../media/Active-image(20).png)

1. To access the Azure portal, open a private/incognito window in your browser and navigate to the [Azure Portal](https://portal.azure.com/).

1. On the **Sign into Microsoft Azure tab**, you will see a login screen. Enter the following email/username, and then click on **Next**.
   
   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

     ![](../media/Active-image1.png)

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

      ![](../media/Active-image2.png)

1. When **Action Required** window pop up click on **Ask Later**.

    ![](../media/Active-image3.png)
   
1. If you see the pop-up **Stay Signed in?**, click **No**.

    ![](../media/Active-image4.png)

1. If a **Welcome to Microsoft Azure** pop-up window appears, click **Cancel** to skip the tour.

    ![](../media/Active-image5.png)

## Prerequisites

- [Azure Subscription](https://azure.microsoft.com/en-us/free/)
- [Azure OpenAI](https://aka.ms/oai/access) access is available with the following models:
  - gpt-35-turbo
  - text-embedding-ada-002

## Solution Guide

### Task 1: Deploy an Azure Open AI Service

In this task you'll learn the process of setting up and deploying the Azure OpenAI service within the Azure Portal.

1. On Azure Portal page, in Search resources, services and docs (G+/) box at the top of the portal, enter **Azure OpenAI (1)**, and then select **Azure OpenAI (2)** under services.

    ![](../media/Active-image6.png)

1. On **Azure AI Services | Azure OpenAI** blade, click on **Create**. Enter the details required and deploy the Azure Open AI service.

   ![](../media/Active-image7.png)

1. Specify the following details to deploy the Azure Open AI service and click **Next** twice.

   | **Option**         | **Value**                                              |
   | ------------------ | -----------------------------------------------------  |
   | Subscription       | Leave default                                          |
   | Resource Group     | **ODL-GenAI-CL-xxxxxx-Activate-GenAI**                 |
   | Region             | Use the same location as the resource group            |
   | Name               | **OpenAi-<inject key="DeploymentID" enableCopy="false"/>** |
   | Pricing tier       | **Standard S0**                                        | 

   >**Note**: Here, xxxxxx refers to the deployment ID

    ![](../media/Active-image9.png)

1. Once validation is successful on the **Review + submit** tab, click **Create** and wait for the deployment to complete.

     ![](../media/Active-image10.png)

### Task 2: Deploy a model

Azure OpenAI provides a web-based portal named Azure OpenAI Studio, that you can use to deploy, manage, and explore models. You'll start your exploration of Azure OpenAI by using Azure OpenAI Studio to deploy a model.

1. On Azure Portal page, in Search resources, services and docs (G+/) box at the top of the portal, enter **Azure OpenAI (1)**, and then select **Azure OpenAI (2)** under services.

1. On **Azure AI Services | Azure OpenAI** blade, select **OpenAI-<inject key="Deployment-id" enableCopy="false"></inject>**.

    ![](../media/Active-image12.png)

1. In the Azure OpenAI resource pane, click on **Go to Azure OpenAI Studio**. It will navigate to **Azure AI Studio**.

   ![](../media/Active-image11.png)

1. On the **Welcome to Azure OpenAI Service** page, click on **Create new deployment**.

   ![](../media/Active-image13.png)

1. On the **Deployments** page, click on **+ Create new deployment**.

     ![](../media/Active-image14.png)
   
1. Within the **Deploy model** pop-up interface, enter the following details :
    - **Select a model**: **gpt-35-turbo** **(1)**
    - **Model version**: **Use the default version** **(2)**
    - **Deployment name**: **text-turbo** **(3)**
    - Expand **Advanced options (4)**
    - Adjust **Tokens per Minute Rate Limit (thousands)**: **20K**
  
         ![](../media/Active-image15.png)
      
1. Click on the **Create** button to deploy a model that you will be playing around with as you proceed.

1. Back on the **Deployments** page again, click on **+ Create new deployment**.

     ![](../media/Active-image16.png)
   
1. Within the **Deploy model** pop-up interface, enter the following details:  and then click on **Advanced options (3)**, followed by scaling down the **Tokens per Minute Rate Limit (thousands) (4)**:
    - **Select a model**: **text-embedding-ada-002** **(1)**
    - **Model version**: **Use the default version** **(2)**
    - **Deployment name**: **text-ada-002** **(3)**
    - Expand**Advanced options** **(4)**
    - Adjust the **Tokens per Minute Rate Limit (thousands)**: **20K** **(5)**
  
         ![](../media/Active-image17.png)

1. Click on the **Create** button to deploy a model that you will be playing around with as you proceed.

1. Back on the Deployments page, you should see the deployment models **text-turbo** and **text-ada-002** created.

     ![](../media/Active-image18.png)

## Success Criteria:

- Successful deployment of the Azure OpenAI Service.

- Deploying Large Language Models (LLM) with the OpenAI Service.


## Additional Resources:

- Refer to the [Azure OpenAI Service documentation](https://learn.microsoft.com/en-us/azure/ai-services/openai/) for guidance on deploying the service.

## Proceed with the next Challenge by clicking on **Next**>>.
