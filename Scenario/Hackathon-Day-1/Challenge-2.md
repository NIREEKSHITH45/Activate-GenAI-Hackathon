# Challenge 2: Document Search using Azure Cognitive Search

## Introduction:
Welcome to the Create an Azure AI Search Solution Hackathon! Organizations depend on information to decide, address queries, and operate effectively. The hurdle isn't typically a scarcity of information but rather the difficulty of locating and extracting it from the vast array of documents, databases, and various sources where it resides.

## Description:
Margie’s Travel, a renowned travel agency specializing in organizing global city trips, faces a formidable task: managing an extensive repository of information contained within brochures and customer hotel reviews. This wealth of data serves as a goldmine of insights for both travel agents and customers in planning their dream vacations. However, the sheer volume of information poses a daunting obstacle when customers seek specific details for their travel queries.
To tackle this challenge head-on, Margie’s Travel seeks to harness the power of Azure AI Search. The goal is to implement an innovative solution that indexes and enriches these documents using cutting-edge AI skills.

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** wherein you can use a visual interface to create, test, manage, and monitor the various components of a search solution; including data sources, indexes, indexers, and skillsets.

3. Create an **Azure AI Services resource** and an **Azure Storage Account**.

4. Upload documents to the newly created storage account.

5. Post the upload of documents into the storage blob container, and create a search solution by indexing them.

6. Explore and modify the definitions of the search components.

## Success criteria:

1. Deploy Azure AI resources
    - Creation of an Azure AI Search resource.
    - Creation of an Azure AI Services resource.

2. In Visual Studio Code, in the **Explorer** pane which contains the folder of the cloned repository `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the **22-create-a-search-solution** folder and edit the batch file, **UploadDocs.cmd** to replace the **YOUR_SUBSCRIPTION_ID** and **YOUR_AZURE_STORAGE_ACCOUNT_NAME**, and **YOUR_AZURE_STORAGE_KEY** placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created previously.

3. The Azure AI resource should have a new Index and Indexer named `margies-indexer`and `margies-index` respectively which defines the search solution.

## Additional Resources:

- Refer to [What is Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) for reference.
- [Create an Azure AI Search Solution](https://github.com/MicrosoftLearning/AI-102-AIEngineer/blob/master/Instructions/22-azure-search.md)
- [Searching document text at scale using Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)

## Prerequisites:

- Well-based knowledge and understanding of the intricacies of Azure Cognitive Services.
- **Data Source**: Prepare the data source by cloning the above-mentioned repository, which includes documents containing the information you want to index and search.

## Lab Validations: 

- WIP
