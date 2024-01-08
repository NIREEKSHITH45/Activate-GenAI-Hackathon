# Challenge 03 :  Architecture Deployment with Terraform 

## Introduction:

Welcome to the Azure Architecture Deployment with Terraform Challenge! This challenge is designed to test your skills in deploying Azure infrastructure using Terraform. The goal is to deploy a given architecture utilizing Infrastructure as Code (IaC) principles and Terraform best practices.

## Description:

Your task is to deploy the architecture provided in the  [Azure Activate GenAI GitHub repository](https://github.com/Azure/activate-genai) using Terraform. The architecture includes a set of Azure resources that form the foundation for an AI-driven solution.

![](../media/appcomponents.png)

## Pre-requisites:
**Setup your Environment**

Before attending the Active GenAI Workshop, please ensure you have the following prerequisites in place:
* [Azure CLI v2.53.0 or later](https://aka.ms/azure-dev/install/)
* [ Terraform v1.6.0 or later](https://developer.hashicorp.com/terraform/install)
* Install [python 3.12.1](https://www.python.org/downloads)
  * **Important**: Python and the pip package manager must be in the path in Windows for the setup scripts to work.
  * **Important**: Ensure you can run `python --version` from console. On Ubuntu, you might need to run `sudo apt install python-is-python3` to link `python` to `python3`.
* Install [Visual Studio Code](https://code.visualstudio.com/download/)
* [Node.js 14+](https://nodejs.org/en/download/)
* [Git](https://git-scm.com/downloads)

 

## Challenge Objectives:

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

