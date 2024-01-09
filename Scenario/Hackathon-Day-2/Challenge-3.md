# Challenge 03 :  Deploy the Chatapp with Terraform

## Introduction:

In this **Deploy the Chatapp with Terraform**, In this comprehensive chat application architecture, various Azure services synergize to create a seamless and intelligent user experience. The **App Service** acts as the hosting platform for the chat application, providing a scalable environment where users can interact effortlessly.

**Application Insights** enhances the application's performance by offering extensive monitoring and telemetry, ensuring proactive issue resolution and a refined user experience.

The **Document Intelligence** service, powered by Azure Cognitive Services, plays a pivotal role by extracting valuable insights from uploaded documents. This empowers the chat application to provide enriched and contextually relevant information to users.

Leveraging the capabilities of **Azure OpenAI**, the application introduces advanced natural language processing and conversation generation, elevating the intelligence and responsiveness of the chat interactions.

Collaboration and insights are streamlined through the **Shared Dashboard**, where team members can visualize and share data. The **Smart Detector Alert Rule** keeps a watchful eye on application metrics, promptly notifying stakeholders of any predefined issues, ensuring swift intervention when necessary.

To enable efficient information retrieval, the **Search Service** facilitates a powerful search functionality within the application, making user interactions more dynamic and informative.

Behind the scenes, the **Log Analytics Workspace** collects and analyzes logs from various services, offering a centralized hub for comprehensive log management and insightful analysis.

The **App Service Plan** ensures optimal resource allocation, defining the region and features for the App Service to maintain scalability and performance.

Lastly, the **Storage Account** securely stores diverse data types, from documents to images, supporting the application's data storage needs and facilitating a robust foundation for the entire chat application ecosystem. Together, these services form a cohesive architecture that combines AI capabilities, monitoring, and data management to deliver an intelligent and responsive chat experience.


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

