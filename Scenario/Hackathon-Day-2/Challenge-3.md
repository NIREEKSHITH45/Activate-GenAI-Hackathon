# Challenge 03:  Deploy the Chat App with Terraform

## Introduction:

In the prior challenges, you effectively deployed models within the Azure OpenAI service and created a document search solution by using Azure AI Search. Now, in this challenge, you will be deploying a solution to run a chat application using terraform.

The chat application seamlessly integrates various Azure services for an intelligent user experience. Here's a brief overview of each service:

- **App Service:** Hosts the chat app, ensuring scalability for a large user base.
- **Application Insights:** Proactively monitors app performance, addressing issues before they escalate.
- **Document Intelligence:** Utilizes AI to understand content in uploaded documents, enhancing user information.
- **Azure OpenAI:** Enhances the app's capabilities with natural language understanding and response.
- **Shared Dashboard:** Serves as a centralized hub for team data sharing and collaboration.
- **Smart Detector Alert Rule:** Monitors app health and alerts the team in case of issues.
- **Search Service:** Empowers users with dynamic and efficient search functionality within the app.
- **Log Analytics Workspace:** Tracks and analyzes app activity, providing valuable insights.
- **App Service Plan:** Optimizes resource allocation, ensuring optimal app performance.
- **Storage Account:** Securely stores various data types, from documents to images, forming a robust foundation for the chat app.

Together, these services create a responsive chat application that combines AI capabilities, monitoring, and data management for an exceptional user experience.

## Architecture diagram:

![](../media/appcomponents.png)

## Pre-requisites:
**Setup your Environment**

Before you begin the Challenge Lab, please ensure you have the following prerequisites installed in your lab environment:
* [Azure CLI v2.53.0 or later](https://aka.ms/azure-dev/install/)
* [Terraform v1.6.0 or later](https://developer.hashicorp.com/terraform/install)
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

- Successful deployment of the chatapp.
- validate if the following services are successfully deployed in the RG (Resource Group).
  - App Service
  - Document Intelligence
  - Azure OpenAI
  - Shared Dashboard
  - Smart Detector Alert Rule
  - Search Service
  - Log Analytics Workspace
  - App Service Plan
  - Storage Account
- Validate if the data is populated into the storage container named `content`.

## Additional Resources:

-  Refer to the  [Azure Search OpenAI demo GitHub repository](https://github.com/cmendible/azure-search-openai-demo) for detailed information on the architecture.
-  [Deploying Solution](https://github.com/Azure/activate-genai/blob/main/infra/README.md)

