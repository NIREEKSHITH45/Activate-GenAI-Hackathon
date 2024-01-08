# Challenge 2: Implement Document Search with Azure AI Search

## Introduction:
In the prior challenge, you effectively deployed models within the Azure OpenAI service. Now, in this challenge, you will focus on the integration of Azure Cognitive Search with OpenAI to develop a document search solution. Embark on building a robust AI search solution by first cloning the repository. Subsequently, establish an Azure AI Search and Storage Account to lay the foundation for the solution.Tailor the solution with precise edits in UploadDocs.cmd for seamless document upload. Set up Azure AI Search, connect with Azure AI Services, and create a powerful indexer for advanced search capabilities. Fine-tune queries, define search components, and initiate search app development using app.json. 

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** and an **Azure Storage Account**.

3. In Visual Studio Code, in the Explorer pane which contains the folder of the cloned reopsitory `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the 22-create-a-search-solution folder and edit the batch file, **UploadDocs.cmd** to replace the `YOUR_SUBSCRIPTION_ID` and `YOUR_AZURE_STORAGE_ACCOUNT_NAME`, and `YOUR_AZURE_STORAGE_KEY` placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created.

4. Run the **UploadDocs.cmd** batch file using Azure CLI,after logging in to Azure. This will create a blob container in your storage account and upload the documents in the data folder to it.

1. Import data for AI Search, opting for Blob Storage. Establish a link with Azure AI Services, customize the index, and create an indexer for smooth integration.
   
1. **Interact with indexed documents**

   - Adjust queries for counts and specific fields, define search components, and query the modified index for refined and targeted information retrieval.

1. **Create Search Client Application**

   - Update the application settings in app.json, configure the web app, and then run it to explore search functionality.

## Success criteria:
To complete this challenge successfully:

- Successfully deployed the Azure Search Service and the Azure Storage Account
- Successfully added the data into the storage account.
- Successfully indexed the documents in Azure AI Search using the Azure portal.
- Suuccessfully customized the index and configured the indexer in Azure AI Search.
- Successfully modified and explored search components using JSON definitions.
- Successfully utilized the Azure AI Search SDK to create a client application for search.
- Successfully ran the web application locally, performed searches, and refined search results successfully.

  

## Additional Resources:

- Refer to [What is Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) for reference.
- [Create an Azure AI Search Solution](https://github.com/MicrosoftLearning/AI-102-AIEngineer/blob/master/Instructions/22-azure-search.md)
- [Searching document text at scale using Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)

