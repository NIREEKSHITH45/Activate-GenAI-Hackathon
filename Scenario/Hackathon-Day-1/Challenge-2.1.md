
# Challenge 2.1: Deploy NVidia NIM to Azure

### Estimated Time: 30 minutes

## Introduction

In the previous challenge, you effectively deployed models within the Azure OpenAI service. In this challenge, you will focus on deploying NVidia NIM to Azure for Challenge-2.1.  You just need to deploy NIM on one of the following choices for Challenge-2.1. 

**Azure ML** is a platform for Data Scientist and Machine LEarning/AI centric Production pipeline.

**Azure Kubenete Service** is a general purpose production pipeline platform.  Perfect for compicate end to end pipeline include both AI related and none AI related components/sub-pipeline. 

**Azure VM** is a easy to start enviorment.  Perfect for Prove of concept evaluation.

## Scenario

**Contoso Ltd.**, a leading technological firm, is seeking to enhance its product support operations. They receive a vast number of queries daily, which results in longer waiting times and decreased customer satisfaction. To address this, Contoso is planning to use NVidia fully optimized models to improve the performance..

They have chosen to deploy NIM to Azure along with its Large Language Models (LLM), like `llama-3.1-8b-instruct`. These models are known for their capability of processing and generating human-like text, making them ideal for this application.

As a part of this challenge, your task is to create an NIM endpoint on Azureby deploying **llama-3.1-8b-instruct** NIM to whatever Azure enviornment you choose.

### Accessing the Azure Portal

1. To access the Azure portal, open a private/incognito window in your browser and navigate to the Azure Portal.

1. On the **Sign in to Microsoft Azure tab**, you will see a login screen. Enter the following email/username and then click on **Next**.

   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

1. If you see the pop-up **Stay Signed in?**, click No.

1. If you see a pop-up, **You have free Azure Advisor recommendations!** Close the window to continue with the challenge.

1. If you see the pop-up **Action Required**, click **Ask Later**. 

1. If a **Welcome to Microsoft Azure** pop-up window appears, click **Cancel** to skip the tour.

## Prerequisites

Make sure you have the following from the CloudLabs-provided integrated environment:

> Note: Prerequisites are pre-configured in the CloudLabs environment. If you're using your personal computer or laptop, ensure all essential prerequisites are installed to complete this Hackathon.

  - [Azure Subscription](https://azure.microsoft.com/en-us/free/)
 
## Challenge Objectives:

Complete one of the following 

1. **Azure ML Deployment:**

 - Detail instruction can be found [here](https://github.com/NVIDIA/nim-deploy/tree/main/cloud-service-providers/azure/azureml)
        
2. **Azure Kubernetes Service Deployment**
   
 - Detail instruction can be found [here](https://github.com/NVIDIA/nim-deploy/tree/main/cloud-service-providers/azure/aks)
  
3. **Azure VM Deployment**

 - Create an Azure VM with 1x A100 GPU and NVidia AI Enterprise imGE 
 - Follow the link [here](https://docs.nvidia.com/nim/large-language-models/latest/getting-started.html) to continue
 - export the endpoint to public accessable.

## Success Criteria:

- Verify that the endpoint is accessable outside
```
curl -X 'POST' \
    'http://<endpoint ip>:8000/v1/completions' \
    -H 'accept: application/json' \
    -H 'Content-Type: application/json' \
    -d '{
"model": "meta/llama-3.1-8b-instruct",
"prompt": "Once upon a time",
"max_tokens": 64
}'
```

## Additional Resources:

- Refer to the [NVidia NIM documentation](https://docs.nvidia.com/nim/large-language-models/latest/introduction.html) for guidance on deploying the service.

### Conclusion

In this challenge, you’ve effectively validated the Azure OpenAI service and deployed LLM Models. In the next challenge, you will learn about Semantic Kernal, which is used for building intelligent apps while leveraging Azure OpenAI models. 
