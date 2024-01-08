# Challenge 2: Implement Document Search with Azure AI Search

## Introduction:
In the prior challenge, you effectively deployed models within the Azure OpenAI service. Now, in this challenge, you will focus on the integration of Azure Cognitive Search with OpenAI to develop a document search solution. Embark on building a robust AI search solution by cloning the repository by eEstablishing an Azure AI Search and Storage Account. Customize with UploadDocs.cmd edits, seamless document upload. Configure AI Search, link with Azure AI Services, and create a potent indexer. Refine queries, define search components, and develop the search app with app.json. This concise guide streamlines a technical process for effective AI search.

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** and an **Azure Storage Account**.

3. In Visual Studio Code, in the Explorer pane which contains the folder of the cloned reopsitory `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the 22-create-a-search-solution folder and edit the batch file, **UploadDocs.cmd** to replace the `YOUR_SUBSCRIPTION_ID` and `YOUR_AZURE_STORAGE_ACCOUNT_NAME`, and `YOUR_AZURE_STORAGE_KEY` placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created.

4. Run the **UploadDocs.cmd** batch file using Azure CLI,after logging in to Azure. This will create a blob container in your storage account and upload the documents in the data folder to it.

1. Ensure to import data for AI Search, choose Blob Storage, link Azure AI Services, customize index, and create an indexer for seamless integration.
   
1. **Interact with indexed documents**

   - Adjust queries for counts and specific fields, define search components, and query the modified index for refined and targeted information retrieval.

1. **Create Search Client Application**

   - Update the application settings in app.json, configure the web app, and then run it to explore search functionality.

## Success criteria:
To complete this challenge successfully:

- Successfully deployed the Azure Search Service and the Azure Storage Account
- Successfully added the data into the storage account.
- Successfully indexed the documents in Azure AI Search using the Azure portal.
- Successfully implemented a skillset for AI enrichment, including sentiment analysis.
- Suuccessfully customized the index and configured the indexer in Azure AI Search.
- Successfully modified and explored search components using JSON definitions.
- Successfullu utilized the Azure AI Search SDK to create a client application for search.
- Successfully developed a web application to interact with the Azure AI Search service.
- Successfully ran the web application locally, performed searches, and refined results successfully.

  

## Additional Resources:

- Refer to [What is Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) for reference.
- [Create an Azure AI Search Solution](https://github.com/MicrosoftLearning/AI-102-AIEngineer/blob/master/Instructions/22-azure-search.md)
- [Searching document text at scale using Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)

