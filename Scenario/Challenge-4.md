# Challenge 04: Serverless Document Batch Processing 

## Introduction:

Welcome to the Serverless Document Batch Processing Hackathon! This challenge focuses on implementing an efficient and scalable serverless solution for document batch processing using Azure services and OpenAI capabilities. The goal is to enhance document search and question-answering experiences with OpenAI embeddings and Azure Cognitive Search.

## Challenge Description:

Your task is to create a serverless document batch processing solution that leverages Azure services and OpenAI embeddings. The solution should allow users to add documents in batches, process them to generate embeddings, and use these embeddings for enhanced search and question-answering experiences.

### Accessing Azure portal

1. To access the Azure portal, open a private/incognito window in your browser and navigate to Azure Portal.

1. On the **Sign in to Microsoft Azure tab** you will see a login screen, enter the following email/username and then click on **Next**.

   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

1. If you see the pop-up **Stay Signed in?**, click No.

1. If you see the pop-up **You have free Azure Advisor recommendations!**, close the window to continue the lab.

1. If a **Welcome to Microsoft Azure** popup window appears, click **Maybe Later** to skip the tour.

## Challenge Objectives:

1. **Implement Batch Processing:**
   - Develop a serverless function or set of functions to process documents in batches.
   - Use OpenAI embeddings (text-embedding-ada-002) to generate embeddings for each document.

2. **Azure Cognitive Search Integration:**
   - Integrate Azure Cognitive Search to index the processed documents and their embeddings.
   - Enable efficient and powerful search capabilities using Azure Cognitive Search.

3. **Question-Answering with OpenAI:**
   - Implement a mechanism to perform question-answering using OpenAI (e.g., text-davinci-003).
   - Retrieve relevant documents and answers based on user queries.

4. **Scalability and Performance:**
   - Optimize the solution for scalability, ensuring it performs well with large volumes of documents.
   - Utilize Azure services for efficient batch processing and search operations.

## Success Criteria:

- Successful implementation of serverless document batch processing using OpenAI embeddings.
- Efficient integration with Azure Cognitive Search for indexing and searching.
- Accurate question-answering capabilities based on document embeddings.
- Scalability and performance optimizations for handling large document volumes.

## Additional Resources:

- Refer to the provided [GitHub repository](https://github.com/ruoccofabrizio/azure-open-ai-embeddings-qna) for the architecture and related resources.
- Explore the [Azure Cognitive Search Vector Search Overview](https://learn.microsoft.com/en-us/azure/search/vector-search-overview) module for additional insights.


## Prerequisites:

- Familiarity with serverless computing, Azure Functions, and Azure Cognitive Search.
- Basic understanding of OpenAI APIs and embeddings.
- Knowledge of scalable and efficient document processing.

## Good luck, and happy hacking!
