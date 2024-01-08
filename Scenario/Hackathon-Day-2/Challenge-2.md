# Challenge 2: Document Search using Azure Cognitive Search

## Introduction:
In the prior challenge, you effectively deployed models within the Azure OpenAI service. Now, in this challenge, you will focus on the integration of Azure Cognitive Search with OpenAI to develop a document search solutions. This enables users to not only search for specific keywords but also to extract meaningful insights from documents using advanced language models.

## Description:
Margie’s Travel, a leading travel agency, seeks to enhance information retrieval for global city trips. The challenge involves leveraging Azure AI Search to create a user-friendly solution that streamlines the organization and enrichment of extensive travel documents.

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** wherein you can use a visual interface to create, test, manage, and monitor the various components of a search solution; including data sources, indexes, indexers, and skillsets.

3. Use the existing **Azure AI Services resource** and Create an **Azure Storage Account**.

4. Upload documents into the newly created storage account.

5. Post the upload of documents into the storage blob container, create a search solution by indexing them.

6. Explore and modify definitions of the search components.

## Success criteria:

1. Deploy Azure AI resources
    - Creation of an Azure AI Search resource.
  
2. In Visual Studio Code, in the **Explorer** pane which contains the folder of the cloned reopsitory `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the **22-create-a-search-solution** folder and edit the batch file, **UploadDocs.cmd** to replace the **YOUR_SUBSCRIPTION_ID** and **YOUR_AZURE_STORAGE_ACCOUNT_NAME**, and **YOUR_AZURE_STORAGE_KEY** placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created previously.

3. The Azure AI resource should have a new Index and Indexer named `margies-indexer`and `margies-index` respectively which defines the search solution.

## Additional Resources:

- Refer to [What is Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) for reference.
- [Create an Azure AI Search Solution](https://github.com/MicrosoftLearning/AI-102-AIEngineer/blob/master/Instructions/22-azure-search.md)
- [Searching document text at scale using Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)

