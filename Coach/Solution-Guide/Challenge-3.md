# Challenge 03:  Deploy the AI Chat App Solution.

### Estimated Time: 150 minutes

## Introduction:

In this challenge, the team will learn how to set up this chat app using Terraform, focusing on user-friendliness, scalability, and easy customization for Contoso. The goal is to create a versatile chat app capable of handling various tasks, from assisting customers to sharing knowledge based on the data provided. Building on the success of deploying models in the Azure OpenAI service and creating a document search solution with Azure AI Search in previous challenges, this task involves deploying a solution for running a chat application using Terraform.

The Chat App should be able to provide a prompt response related to the data that we have added using the Form recognizer and analyzed using the Azure search service

The chat application integrates seamlessly with different Azure services to provide an intelligent user experience. Here's a simple overview of each service:

- **App Service:** This hosts the chat app, ensuring it can respond to the prompts sent by users from the uploaded relatable data.
- **Application Insights:** It proactively monitors the app's performance, taking care of issues before they become significant.
- **Document Intelligence:** Using AI, it understands the content in uploaded documents, making user information more insightful.
- **Azure OpenAI:** Enhances the app's capabilities with natural language understanding and responses.
- **Shared Dashboard:** Acts as a central hub for team collaboration and data sharing.
- **Smart Detector Alert Rule:** Monitors the app's health and notifies the team if any issues arise.
- **Search Service:** Empowers users with dynamic and efficient search functionality within the app.
- **Log Analytics Workspace:** Tracks and analyzes app activity, offering valuable insights and logs.
- **App Service Plan:** Optimizes resource allocation for optimal app performance.
- **Storage Account:** Securely stores the data that will be used by the Azure AI Search service to provide the inputs to the chat app.

Together, these services create a responsive chat application that combines AI features, monitoring capabilities, and efficient data management, providing Contoso with an exceptional user experience.


## Architecture diagram:

![](../media/appcomponents.png)


## Solution Guide:

## Task 1: Clone the repository for this Challenge

If you have not already cloned **Activate GenAI** code repository to the environment where you're working on this lab, follow these steps to do so. Otherwise, open the cloned folder in Visual Studio Code.

1. Start Visual Studio Code.
2. Open the palette (SHIFT+CTRL+P) and run a **Git: Clone** command to clone the `https://github.com/CloudLabs-MOC/activate-genai` repository to a local folder (it doesn't matter which folder).
3. When the repository has been cloned, open the folder in Visual Studio Code.

## Task 2: Deploying the solution using terraform

1.**Deploying the infrastructure**

Verify terraform installed in your machine by runnig the following command `terraform --version`

Login to Azure:

```bash
azd auth login 
```

Run the following commands to deploy the infrastructure:

```bash
cd infra
terraform init
terraform apply
```

## Task 3: Azure Search Index Deployment:


Run the following commands to deploy the Azure Search Index and upload the sample documents:

```bash

export AZURE_PRINCIPAL_ID="<principal id>"
export AZURE_RESOURCE_GROUP="<resource group>" 
export AZURE_SUBSCRIPTION_ID="<subscription id>"
export AZURE_TENANT_ID="<azure tenant id>"
export AZURE_STORAGE_ACCOUNT="<storage account name>"
export AZURE_STORAGE_CONTAINER="content"
export AZURE_SEARCH_SERVICE="<search service name>"
export OPENAI_HOST="azure"
export AZURE_OPENAI_SERVICE="<openai service name>"
export OPENAI_API_KEY=""
export AZURE_OPENAI_EMB_DEPLOYMENT="text-embedding-ada-002"
export AZURE_OPENAI_EMB_MODEL_NAME="text-embedding-ada-002"
export AZURE_SEARCH_INDEX="gptkbindex"
```


Deploy the Azure Search Index and upload the sample documents by running the following command:

```bash
./scripts/prepdocs.ps1
```


The above script will create an index in AI search service and analyse and upload the PDF data to storage account and integrate it with Azure OpenAI with the help of Form Recogniser and Azure AI search.

## Additional Resources:

-  Refer to the  [Azure Search OpenAI demo GitHub repository](https://github.com/cmendible/azure-search-openai-demo) for detailed information on the architecture.
-  [Azure copilot](https://learn.microsoft.com/en-us/azure/copilot/overview)

