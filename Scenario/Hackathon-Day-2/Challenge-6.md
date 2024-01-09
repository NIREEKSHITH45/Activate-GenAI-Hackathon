# Challenge 06: Serverless Document Batch Processing 

## Introduction:

In the prior challenge, you have understood how we can practise load balancing amongst Azure OpenAI resources in various regions. Now, in this challenge, you will be exploring the accelerator's capabilities for building pipelines across diverse services, crafting AI solutions aligned with your business needs. The technical mission will involve three main stages: language translation, serverless document batch processing using Azure services, and leveraging advanced features such as Form Recognizer and AI search. Initially, files will be translated to meet language requirements. Subsequently, a serverless architecture, utilizing Azure services, will be deployed for efficient batch processing of documents. The model will be trained and tested, and a pipeline will be established to convert documents into a Form Recognizer format. Once ingested, Azure's AI search service will be employed to import data, and a robust search functionality will be implemented to verify the presence of specific documents in the processed dataset.

## Challenge Objectives:

1) Utilize the multi-service account in Azure AI services to establish a Translator.

1) **Key and Endpoint Retrieval and Azure Blob Storage Container Creation:**

    - Set up Document Translation efficiently, secure key and endpoint, integrate credentials for API authentication, and create mandatory source and target containers in Azure Blob Storage previously utilized.

1) **Prepare your C#/.NET environment:**

    - Begin a new Visual Studio project by selecting "Create a new project" and opting for the Console Application template. Specify a name for your project with .NET 6.0 before finalizing.

1) **Install Newtonsoft.Json, Translate and run your application :**

    - Add NewtonsoftJson to your project via NuGet Packages, replace [code](https://learn.microsoft.com/en-us/azure/ai-services/translator/document-translation/quickstarts/document-translation-rest-api?pivots=programming-language-csharp#code-sample) in Program.cs with the document translation sample, update URLs, and start the program by clicking the green button or pressing F5.

**Using Doc Intelligence:**

1) Make use of the Azure AI services multi-service account to ensure the creation and initiation of a project by selecting Doc Intelligence.

1) Forge a pipeline using a static web app, designate a document type for transformation into a Form Recognizer model, and guarantee smooth document ingestion for thorough processing.

1) Optimize data import with advanced indexing in the search service. Utilize the BPA Accelerator's search app for precise document retrieval.

## Success Criteria:

1. Successful Translation:

   - The translated documents can be found in your target container.
   - The successful POST method returns a 202 Accepted response code indicating that the service created the batch request.
   - The POST request also returns response headers including Operation-Location that provides a value used in subsequent GET requests.
   
- Make sure the project is established by configuring the service resource and linking the training data source effectively.
- Successfully identified the respective field created in the preceding step, providing its confidence score.
- Ensure the accurate selection of the "Select a stage to add it to your pipeline configuration" option to align with the specific requirements of your pipeline configured
- The file retrieval operation was executed successfully, and the relevant document is displayed in the search results.

## Additional Resources:

- Refer to the provided [GitHub repository](https://github.com/MSUSAzureAccelerators/Azure-OpenAI-and-Form-Recognizer-Workshop/blob/main/README.md) for detailed information.

## Prerequisites:

- Familiarity with serverless computing, Form recognizer, and Azure Cognitive Search.
- Knowledge of scalable and efficient document processing.
- Download [Visual Studio 2022](https://visualstudio.microsoft.com/vs/)
- 
