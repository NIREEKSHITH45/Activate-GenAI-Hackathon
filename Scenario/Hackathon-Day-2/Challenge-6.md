# Challenge 06: Serverless Document Batch Processing 

### Estimated Time: 90 minutes

## Introduction:

Welcome to a pivotal challenge where Contoso Ltd aims to enhance their AI-powered chat app with a robust document processing system. This challenge focuses on creating a serverless solution for processing new documents, translating them as needed, and seamlessly storing them into Azure AI Search. This system will ensure that these documents are continuously available for consumption by Azure OpenAI, enhancing the chat app's knowledge base and response accuracy.

Building on your previous achievements in load balancing Azure OpenAI resources, you will now embark on a journey to streamline document processing. This involves setting up a translation service, creating a serverless architecture for batch processing using Azure services, and leveraging technologies like Form Recognizer and Azure AI Search. Your task is to ensure that newly added documents are promptly processed, analyzed, and indexed, making them readily available for the chat app's AI to utilize.

This challenge unfolds in three main stages: language translation, serverless document batch processing using Azure services, and leveraging advanced features like Form Recognizer and AI search. We kick things off by translating files to meet language requirements. Next, you deploy a serverless architecture, utilizing Azure services, for efficient batch processing of documents. You train and test our model, establish a pipeline to convert documents into a Form Recognizer format, and bring in Azure's AI search service to verify the presence of specific documents in the processed dataset from where they can be used by Azure OpenAI. 

You will utilize the Form Recognizer Service and the Business Process Automation (BPA) Accelerator to build pipelines across various Azure services, creating a seamless document processing solution. This challenge is a step towards realizing an AI solution that can adapt and grow with Contoso's business needs.



## Challenge Objectives:

> **Important**: When deploying services in this challenge, please make sure to use the resource group named **<inject key="Resource Group Name"/>**  !

1) **Set up a translator within Azure AI services.**

    - Implement a translation service to meet Contoso's multilingual document requirements.

1) **Setup Azure Blob Storage  .**

    - Create mandatory source and target containers in Azure Blob Storage for document processing.

1) **Initialize C#/.NET Environment for Document Processing:**

    - Set up a C#/.NET project in Visual Studio for document translation, using .Net Version 6.
    - Install necessary packages, including Newtonsoft.Json.

1) **Translate Documents and Run Application:**

    - Implement document translation code in the C#/.NET project.
    - Execute the application to translate all documents in the storage container.

      >Note: You can find the documents in C:\LabFiles\Documents

**Using Doc Intelligence:**

1) **Pre-requisites setup:**
      - Clone the repository `https://github.com/Azure/business-process-automation`
      - Follow the instructions to **Deploy to Azure With OpenAI**
      - Verify the deployed Azure resources in the resource group

1) **Using an Azure Document Intelligence (Form Recognizer) resource:**
    - Navigate to Azure AI services and set up an Azure Document Intelligence (Form Recognizer) resource.
    - Upload and label training documents to train the Azure Document Intelligence (Form Recognizer) model.

         >Note: You can find the documents in C:\LabFiles\Documents

1) **Build a New Pipeline with Custom Model Module in BPA:**
    - Utilize the trained Form Recognizer model to create a new pipeline in BPA.
    - Configure the pipeline for efficient document processing and integration with Azure Cognitive Search.

1) **Configure Azure AI Search:**
    - Connect to Azure Blob Storage and configure data import and indexing.
    - Set up an indexer for organized data retrieval.

1) **Update Azure OpenAI Model to use the Azure AI Search**
    - Update your existing Azure OpenAI model deployment to connect to the newly created AI Search index and test using Azure OpenAI Playground.
      
## Success Criteria:

- Successful translation of documents and storage in Azure Blob Storage target container.
- Effective setup and utilization of Form Recognizer resource and BPA pipeline.
- Proper configuration of Azure Cognitive Search for processed documents.
- Validation of document processing and search functionality using the Sample Search Application in BPA.

## Additional Resources:

- Refer [document translation](https://learn.microsoft.com/en-us/azure/ai-services/translator/document-translation/quickstarts/document-translation-rest-api?pivots=programming-language-csharp#code-sample) for sample code that will be used for document translation using C#.

## Challenge Validation
 
1. After completing the challenge, you need to visit the **Lab Validation (1)** tab and click on the **VALIDATE (2)** button under Actions to perform the validation steps. Verify that you have met the success criteria of the challenge. 
 
    ![](../media/validate01.png "Validation")
 
1. If the validation status displays **Success** for all the validation steps, **congratulations!**. This means that you have completed the challenge and have unlocked the next challenge.
 
     ![](../media/validate02.png "Validation")

1. If the validation status displays **Fail**, **don't worry!** This could mean that you did not perform the challenge correctly.
 
     ![](../media/validate03.png "Validation")
 
1. Hover your mouse over the `i` **(1)** icon to see the error message and determine the root cause of the failure. Based on the error message, revisit the challenge as necessary, and redo the validation by clicking on the **VALIDATE (3)** button again.

   ![](../media/validate04.png "Validation")
 
1. If you are still having trouble, you can reach out to the support team via `labs-support@spektrasystems.com` for further assistance. The support team is available to help you to troubleshoot and resolve any technical issues or validation issues that may arise while the lab environment is live.
