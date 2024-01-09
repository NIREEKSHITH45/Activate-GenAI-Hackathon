# Challenge 2: Implement Document Search with Azure AI Search

## Introduction:
In the prior challenge, you effectively deployed models within the Azure OpenAI service. In this challenge will focus on creating a document search solution by integrating Azure AI Search with OpenAI. 

To create an AI search solution, you will begin by cloning the provided repository and establishing an Azure AI Search and storage Account as the foundation. You will customize the solution by refining UploadDocs.cmd for seamless document uploading. Next, you will proceed to set up Azure AI Search, connect it with Azure AI Services, and construct a robust indexer for advanced search functionalities. Concluding the process, you will fine-tune queries, define search components, and initiate the development of the search app.

## Challenge Objectives:

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** and an **Azure Storage Account**.

3. In Visual Studio Code, in the Explorer pane which contains the folder of the cloned reopsitory `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the 22-create-a-search-solution folder and edit the batch file **UploadDocs.cmd**, to replace the `YOUR_SUBSCRIPTION_ID` and `YOUR_AZURE_STORAGE_ACCOUNT_NAME`, and `YOUR_AZURE_STORAGE_KEY` placeholders with the appropriate subscription ID, Azure storage account name, and Azure storage account key values for the storage account you created.

4. Run the **UploadDocs.cmd** batch file using Azure CLI, after logging in to Azure. This will create a blob container in your storage account and upload the documents in the data folder to it.

5. Import data for AI Search, opting for Blob Storage. Establish a link with Azure AI Services, customize the index, and create an indexer for smooth integration.
   
6. **Interact with indexed documents**
   
   **Index the Documents:**
      
   - Navigate to your Azure AI Search resource in the Azure portal.
   - On the Overview page, choose "Import data."
   - Select "Azure Blob Storage" as the Data Source.
   - Configure data store details, including connection to the storage account and container.
   - Proceed to the next step, "Add cognitive skills."
   - Attach your Azure AI Services resource.
   - Configure the skillset (margies-skillset) with desired enrichments.
   - Proceed to the next step, "Customize target index."
   - Change the Index name to "margies-index" and configure index fields.
   - Proceed to the next step, "Create an indexer."
   - Change the Indexer name to "margies-indexer" and configure advanced options.
   - Submit to create data source, skillset, index, and indexer.
   - Check the Indexers tab for successful indexing.
    
   **Search the Index:**
   
   - On the Azure AI Search Overview page, select "Search explorer."
   - In the Query string box, enter `"*"` to retrieve all documents in JSON format.
   - Modify the JSON request to include parameters like "count" to refine results.
   - Explore queries for specific fields and conditions.
   - Review and modify search components using JSON definitions.
   - Get the endpoint and key for Azure AI Search resource.
   
   **Explore and Modify Definitions:**
      
   **Skillset:**
      - Open `skillset.json` in Visual Studio Code.
      - Update `cognitiveServices` key with Azure AI Services resource key.
      - Review and modify skills, including the new sentiment skill.

   **Index:**
      - Open `index.json` in Visual Studio Code.
      - Scroll through field definitions, noting additional sentiment and URL fields.
    
   **Indexer:**
      - Open `indexer.json` in Visual Studio Code.
      - Review mappings for `metadata_storage_path` and URL.
      - Check `outputFieldMappings`, including the `sentimentLabel` mapping.

   **Use REST API to Update:**
      - Open an integrated terminal in the "modify-search" folder.
      - Run the `modify-search.cmd` script to update the search solution.
      
   **Query the Modified Index:**
      - In Search explorer, submit JSON queries to test the modified index.
      - Explore advanced queries with filters and specific field selections.

7. **Create Search Client Application** 

   - Use the SDK (C# or Python) according to your language preference .
   - Get the endpoint and query key from Azure AI Search resource.
   - Install Azure AI Search SDK in Visual Studio Code.
   - Update configuration values in `appsettings.json` (C#) or `.env` (Python).
   - Explore code to search an index using the SDK.
     
   **Run the Web App:**
   - Use terminal: `dotnet run` (C#) or `flask run` (Python).
   - Open the provided link in a browser to access the Margies Travel site.
   - Enter a search term, review results, and explore refinement options.


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
