# Challenge 03:  Deploy the AI Chat App Solution.

### Estimated Time: 150 minutes

## Introduction:

In this challenge, the team will learn how to deploy the solution that configures and builds the AI App, focusing on user-friendliness, scalability, and easy customization for Contoso. The goal is to create a versatile chat app capable of handling various tasks, from assisting customers to sharing knowledge. Building on the success of deploying models in the Azure OpenAI service and creating a document search solution with Azure AI Search in previous challenges, this task involves deploying a solution for running a chat application using Terraform.

The Chat App should be able to provide a prompt response related to the data that we have added using the Form recognizer and analyzed using the Azure search service

The chat application integrates seamlessly with different Azure services to provide an intelligent user experience. Here's a simple overview of each service:

- **App Service:** This hosts the chat app, ensuring it can handle a large number of users effectively.
- **Application Insights:** It proactively monitors the app's performance, taking care of issues before they become significant.
- **Document Intelligence:** Using AI, it understands the content in uploaded documents, making user information more insightful.
- **Azure OpenAI:** Enhances the app's capabilities with natural language understanding and responses.
- **Shared Dashboard:** Acts as a central hub for team collaboration and data sharing.
- **Smart Detector Alert Rule:** Monitors the app's health and notifies the team if any issues arise.
- **Search Service:** Empowers users with dynamic and efficient search functionality within the app.
- **Log Analytics Workspace:** Tracks and analyzes app activity, offering valuable insights.
- **App Service Plan:** Optimizes resource allocation for optimal app performance.
- **Storage Account:** Securely stores various data types, forming a robust foundation for the chat app.

Together, these services create a responsive chat application that combines AI features, monitoring capabilities, and efficient data management, providing Contoso with an exceptional user experience.


## Architecture diagram:

![](../media/appcomponents.png)

## Pre-requisites:
**Setup your Environment**
 > **Note**: Pre-requisites are already set up in the provided environment. If you're using your personal computer or laptop, please make sure that all necessary prerequisites are installed to complete this Hackathon.

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

> **Important**: When deploying services in this challenge, please make sure to use the resource group named **<inject key="Resource Group Name"/>** !

1. **Clone the Repository:**
   - Clone the Active Gen AI repository: `https://github.com/Azure/activate-genai`.
   - Verify if Terraform is installed on your machine. If not, follow the [Terraform installation guide](https://developer.hashicorp.com/terraform/install)

2. **Terraform Deployment:**
   - Use Terraform to deploy the architecture specified in the provided GitHub repository.
   - Configure Terraform scripts to provision Azure resources accurately.

3. **Azure Search Index Deployment:**
   - Use the `prepdocs.ps1` from the scripts folder to analyze and upload the data to the storage account.
      > Note:- You will need to understand and update the script based on the requirements mentioned in the script.
      
## Success Criteria:

- Successful deployment of the chat-app.
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
-  [Azure copilot](https://learn.microsoft.com/en-us/azure/copilot/overview)

## Challenge Validation
 
1. After completing the challenge, you need to visit the **Lab Validation (1)** tab and click on the **VALIDATE (2)** button under Actions to perform the validation steps. Verify that you have met the success criteria of the challenge. 
 
    ![](../media/validate01.png "Validation")
 
1. If the validation status displays **Success** for all the validation steps, **congratulations!**. This means that you have successfully completed the challenge and have unlocked the next challenge.
 
     ![](../media/validate02.png "Validation")

1. If the validation status displays **Fail**, **don't worry!** This could mean that you did not perform the challenge correctly.
 
     ![](../media/validate03.png "Validation")
 
1. Hover your mouse over the `i` **(1)** icon to see the error message and determine the root cause of the failure. Based on the error message, revisit the challenge as necessary, and redo the validation by clicking on the **VALIDATE (3)** button again.

   ![](../media/validate04.png "Validation")
 
1. If you are still having trouble, you can reach out to the support team via `labs-support@spektrasystems.com` for further assistance. The support team is available to help you troubleshoot and resolve any technical issues or validation issues that may arise while the lab environment is live.
