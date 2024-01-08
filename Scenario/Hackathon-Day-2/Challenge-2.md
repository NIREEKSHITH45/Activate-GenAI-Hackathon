# Challenge 2: Document Search using Azure Cognitive Search

## Introduction:
In the prior challenge, you effectively deployed models within the Azure OpenAI service. Now, in this challenge, you will focus on the integration of Azure Cognitive Search with OpenAI to develop a document search solution. This enables users to not only search for specific keywords but also to extract meaningful insights from documents using advanced language models.

## Description:
Margie’s Travel, a leading travel agency, seeks to enhance information retrieval for global city trips. The challenge involves leveraging Azure AI Search to create a user-friendly solution that streamlines the organization and enrichment of extensive travel documents.

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** and an **Azure Storage Account**.
> **Important**: Your Azure AI Search and Azure AI Services resources must be in the same location!

3. In Visual Studio Code, in the Explorer pane which contains the folder of the cloned reopsitory `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the 22-create-a-search-solution folder and edit the batch file, **UploadDocs.cmd** to replace the `YOUR_SUBSCRIPTION_ID` and `YOUR_AZURE_STORAGE_ACCOUNT_NAME`, and `YOUR_AZURE_STORAGE_KEY` placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created.

4. Run the **UploadDocs.cmd** batch file using Azure CLI,after logging in to Azure. This will create a blob container in your storage account and upload the documents in the data folder to it.

1. **Document Indexing**
   
   a. In Azure portal, go to your AI Search resource, select **Import data** on the **Overview** page.
   
   b. Choose **Azure Blob Storage** as the **Data Source**. Fill in details for **margies-data**:
      - **Data Source**: Azure Blob Storage
      - **Connection**: Existing storage account, **margies** container.
      - **Data to extract**: Content and metadata
   
   c. In **Attach Azure AI Services**, select your resource. Configure **margies-skillset**:
      - Enable OCR, merge text into **merged_content**.
      - Select cognitive skills for enrichment.
   
   d. **Customize the index:**
      - **Index name**: **margies-index**
      - **Key**: **metadata_storage_path**
      - Define fields for retrieval, filtering, sorting, faceting, and searching.
   
   e. **Create an indexer:**
      - **Indexer name**: **margies-indexer**
      - **Schedule**: **Once**
      - **Advanced**: Select **Base-64 encode keys** for efficiency.
   
   f. Hit **Submit**. Wait for **margies-indexer** status to indicate success under **Overview > Indexers**.

1. **Interact with Indexed Documents**

   a. **Azure Portal: Search Explorer**
      - Open Search Explorer.
      - Enter `*` for all documents.
      - Modify query for counts and specific fields.
   
   b. **Define Search Components (Using modify-search.cmd)**
      - Get Azure AI Search resource URL.
      - Update `modify-search.cmd` with resource details.
      - Enhance skillset with sentiment analysis.
      - Update index and indexer for new fields.
      - Use `modify-search.cmd` to submit JSON definitions.
   
   c. **Query Modified Index**
      - In Search Explorer, test queries.
      - Find positive reviews mentioning "London."

1. **Create Search Client Application**

   a. **Configure Application**
      - Get Azure AI Search URL and query key.
      - Update app settings (appsettings.json or .env).
   
   b. **Run Web App**
      - Run the app (C# with `dotnet run` or Python with `flask run`).
      - Open Margies Travel in a browser.
   
   c. **Explore Search**
      - Search for "London hotel" and refine results.
      - Try various queries like "quiet hotel in New York."
      - Explore terms like "Tower of London" and "skyscraper."


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

