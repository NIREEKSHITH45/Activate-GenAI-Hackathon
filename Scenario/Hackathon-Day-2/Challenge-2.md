# Challenge 02: Implement Document Search with Azure AI Search

### Estimated Time: 120 minutes

## Introduction:

In the previous challenge, you successfully set up models in the Azure OpenAI service. Now, Contoso needs a way for its team to quickly find information. This challenge focuses on using Azure AI Search to make the search process easier for the team.

The goal is to teach them how to search for documents in a smart way, simplifying decision-making and extracting essential information. The team will work on organizing data, improving search capabilities, and gaining valuable insights from messy information. The ultimate objective is to create a solution that makes finding information quick and effortless for Contoso.

To achieve this, you'll start by cloning a provided repository and establishing the foundation with Azure AI Search and a storage account. The process involves customizing the document uploading script, setting up Azure AI Search, connecting it with Azure AI Services, and building a powerful indexer for advanced search features. Finally, you'll refine queries, define search components, and kickstart the development of the search app.

## Challenge Objectives:

> **Important**: When deploying services in this challenge, please make sure to use the resource group named **<inject key="Resource Group Name"/>**.  !

1. **Clone the Repository:**
   - Clone the repository within Visual Studio Code: `https://github.com/MicrosoftLearning/AI-102-AIEngineer`.

2. Create an **Azure AI Search resource** with  Standard S0 SKU and **Azure AI Service** with basic pricing and an **Azure Storage Account** with Standard tier.

3. In Visual Studio Code, in the Explorer pane which contains the folder of the cloned repository `https://github.com/MicrosoftLearning/AI-102-AIEngineer`, expand the 22-create-a-search-solution folder and edit the batch file, **UploadDocs.cmd** with the required values.

4. open and explore the **UploadDocs.cmd** batch file using VS Code and later execute it. Make sure that the required resources and files are created in Azure.
    > Hint: Make sure to log in to Azure in cmd to execute the file.
     
1. Import data for AI Search, opting for Blob Storage. Establish a link with Azure AI Services, customize the index, and create an indexer for smooth integration.
   
1. **Interact and search queries with indexed documents**

   - Adjust queries for counts and specific fields, define search components, and query the modified index for refined and targeted information retrieval.

1. **Create Search Client Application** 

   - Update the application settings, configure the web app, and then run it to explore search functionality.

      > Hint: The app is available in two languages, use the one that is in your scope.

## Success criteria:
To complete this challenge successfully:

- Successfully deployed the Azure Search Service and the Azure Storage Account
- Successfully added the data into the storage account.
- Successfully indexed the documents in Azure AI Search using the Azure portal.
- Successfully customized the index and configured the indexer in Azure AI Search.
- Successfully modified and explored search components using JSON definitions.
- Successfully utilized the Azure AI Search SDK to create a client application for search.
- Successfully ran the web application locally, performed searches, and refined search results successfully.

## Additional Resources:

- Refer to [What is Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search) for reference.
- [What are Indexes in Azure AI Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-an-index)
- [Searching document text at scale using Azure Cognitive Search](https://benalexkeen.com/searching-document-text-at-scale-using-azure-cognitive-search/)

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
