# Challenge 03:  Deploy an AI-Powered Chat App 

### Estimated Time: 150 minutes

### Introduction:

In this challenge, you'll deploy an AI-powered chat application specifically designed for Contoso Electronics. This app, built with React for the frontend and Python for the backend, showcases advanced features like chat and Q&A interfaces, all augmented by AI capabilities. It's an excellent opportunity for you to explore the integration of Azure OpenAI Service with the GPT-3.5 Turbo model and Azure Cognitive Search for efficient data indexing and retrieval.

This sample app is more than just a chat interface; it demonstrates the Retrieval-Augmented Generation pattern, offering a rich, ChatGPT-like experience over Contoso's own data. The app's features include trustworthiness evaluation of responses with citations, tracking of source content, data preparation, prompt construction, and orchestrating interaction between the ChatGPT model and Cognitive Search. You'll also find adjustable settings in the UX for experimentation and optional performance tracing and monitoring with Application Insights.

In this challenge, your task is to deploy this comprehensive chat solution for Contoso, allowing them to evaluate its capabilities and integrate it into their environment. The repository comes with sample data, representing a ready-to-use, end-to-end solution. This app is a valuable tool for Contoso's employees to inquire about company benefits, internal policies, job descriptions, and roles.

You will be using Terraform to deploy the chat app. 

The chat application integrates seamlessly with different Azure services to provide an intelligent user experience. Here's a simple overview of each service used by the app:

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

## Prerequisite
   
1. Start Powershell 7 +.
   
2. Ensure you run `pwsh.exe` from a PowerShell terminal. If this fails, you likely need to upgrade PowerShell.

## Task 1: Deploy the  AI-Powered Chat App.

**Deploying the infrastructure**

1. In the LabVM, type **Powershell 7** in the Windows Search bar.

1. Select it and **Run as Administrator**.
   
1. Run the following command to login to Azure:

   ```
   azd auth login
   ```

   >**Note**: A web browser tab will open and prompt you to sign into Azure. Select the Azure Account you had previously logged in with. Close the browser tab once prompted.

   ![](../media/gen1.png)
1. Once successfully logged in ,run the below command to download the project code:

   ```
   azd init -t azure-search-openai-demo
   ```
   >**Note**: The above command will initialize a git repository, eliminating the need to clone it afterwards.

1. When prompted with **Continue iniatializing an app in `C:\Users\demouser`**, type **y / yes (1)**.

   ![](../media/gen2.png)

1. Once presented with **What would you like to do with these files?**, choose **Overwrite with versions from template**.

   ![](../media/gen3.png)

1. Enter a new environment name:  **activategenai**

    >**Note**: This will create a new folder in the `.azure` folder, and set it as the active environment for any calls to azd going forward.

      ![](../media/gen4.png)

1. Verify the new project initilized is successful.
   
1. Run the below command to provision Azure resources and deploy the resources, including building the search index based on the files found in the `./data` folder

   ```
   azd up
   ```
   >**Note**: In case you are prompted with the **ERROR: not logged in, run azd auth login to login** and select your **Azure Account** again.

1. Add the following details when prompted:

   - Select an Azure Subscription to use: **Select the default subscription (1)**
   - Select an Azure Location to use: **Select any location you would like to use (2)**
   - Enter a value for the 'documentIntelligenceResourceGroupLocation' infrastructure parameter : **Select any location you would like to use (3)**
   - Enter a value for the 'openAIResourceGroupLocation' infrastructure parameter: **Select any location you would like to use(4)**
     

        ![](../media/gen5.png)

1. After the application has been successfully deployed you will see a URL printed to the console. Click that URL to interact with the application in your browser. It will look like the following:

   ![](../media/gen6.png)
 
>**Note**: It may take 5-10 minutes after you see 'SUCCESS' for the application to be fully deployed. If you see a "Python Developer" welcome screen or an error page, then wait a bit and refresh the page.

## Additional Resources:

-  Refer to the  [Azure Search OpenAI demo GitHub repository](https://github.com/cmendible/azure-search-openai-demo) for detailed information on the architecture.
-  [Azure copilot](https://learn.microsoft.com/en-us/azure/copilot/overview)

