# Challenge 03 :  Deploy the Chatapp with Terraform

## Introduction:

In this **Deploy the Chatapp with Terraform** challenge, we will be deploying a solution to run a chat application using terraform. The chat application uses several Microsoft Azure services to create a seamless and intelligent user experience. 

The **App Service** is like the home where the chat app lives, making sure it can handle lots of users without any problems. **Application Insights** helps keep an eye on how well the app is doing, fixing issues before they become a big deal.

**The Document Intelligence** service is super smart, using AI to understand what's in uploaded documents. This helps the chat app give users better and more relevant information. **Azure OpenAI** adds even more smarts, making the chat app understand and respond to users in a very natural way.

The **Shared Dashboard** is like a central place where the team can see and share important information. The **Smart Detector Alert Rule** keeps an eye on the app's health, telling the team if something is going wrong. The Search Service helps users find things quickly in the app, making their interactions more dynamic.

Behind the scenes, the **Log Analytics Workspace** keeps track of what's happening in the app. The **App Service Plan** makes sure everything is in the right place and works well. The **Storage Account** is like a secure storage room, keeping all kinds of data, from documents to images. Together, these services create a smart and responsive chat app that combines AI, monitoring, and data management for a great user experience.

## Description:

Your task is to deploy the architecture provided in the  [Azure Activate GenAI GitHub repository](https://github.com/Azure/activate-genai) using Terraform. The architecture includes a set of Azure resources that form the foundation for an AI-driven solution.

![](../media/appcomponents.png)

## Pre-requisites:
**Setup your Environment**

Before you begin the Challenge Lab, please ensure you have the following prerequisites installed in the CloudLabs provided integrated environment:
* [Azure CLI v2.53.0 or later](https://aka.ms/azure-dev/install/)
* [ Terraform v1.6.0 or later](https://developer.hashicorp.com/terraform/install)
* Install [python 3.12.1](https://www.python.org/downloads)
  * **Important**: Python and the pip package manager must be in the path in Windows for the setup scripts to work.
  * **Important**: Ensure you can run `python --version` from console. On Ubuntu, you might need to run `sudo apt install python-is-python3` to link `python` to `python3`.
* Install [Visual Studio Code](https://code.visualstudio.com/download/)
* [Node.js 14+](https://nodejs.org/en/download/)
* [Git](https://git-scm.com/downloads)

 

## Challenge Objectives: (WIP)

1. **Clone the Repository:**
   - Clone the Active Gen AI repository: `https://github.com/Azure/activate-genai`.
   - Verify if Terraform is installed on your machine. If not, follow the [Terraform installation guide](https://developer.hashicorp.com/terraform/install)

2. **Terraform Deployment:**
   - Use Terraform to deploy the architecture specified in the provided GitHub repository.
   - Configure Terraform scripts to provision Azure resources accurately.

3. **Azure Search Index Deployment:**
   - Follow the [manual steps](https://github.com/Azure/activate-genai/blob/main/infra/README.md) to deploy the Azure Search Index and upload the sample documents.
## Success Criteria:

- Successful deployment of the architecture using Terraform scripts.
- Correct configuration of Azure resources according to the provided architecture.
- Successful deployment of Azure search index.

## Additional Resources:

-  Refer to the  [Azure Search OpenAI demo GitHub repository](https://github.com/cmendible/azure-search-openai-demo) for detailed information on the architecture.
-  [Deploying Solution](https://github.com/Azure/activate-genai/blob/main/infra/README.md)

