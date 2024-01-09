# Challenge 06: Serverless Document Batch Processing 

## Introduction:

In this challenge, you will be exploring the accelerator's capabilities for building pipelines across diverse services, crafting AI solutions aligned with your business needs. The technical mission will involve three main stages: language translation, serverless document batch processing using Azure services, and leveraging advanced features such as Form Recognizer and AI search. Initially, files will be translated to meet language requirements. Subsequently, a serverless architecture, utilizing Azure services, will be deployed for efficient batch processing of documents. The model will be trained and tested, and a pipeline will be established to convert documents into a Form Recognizer format. Once ingested, Azure's AI search service will be employed to import data, and a robust search functionality will be implemented to verify the presence of specific documents in the processed dataset.

## Challenge Objectives:

1) Efficiently deploy or access a Document Translation resource, secure the key and endpoint, and seamlessly integrate these credentials into the provided code samples for authenticating API requests.

1) Establish a required source container for file uploads and an obligatory target container for storing translated files within your Azure Blob Storage account.

1) Configure precise source and target languages, selectively choose files for translation from the local system, and seamlessly define the destination for an efficient translation process.

1) Make use of the Azure AI services multi-service account to ensure the creation and initiation of a project.

1) Ensure thorough training by uploading specific files and conducting rigorous testing to validate the effectiveness of the implemented solution. Document that can be uploaded:

1)

1) Forge a pipeline using a static web app, designate a document type for transformation into a Form Recognizer model, and guarantee smooth document ingestion for thorough processing.

1) Optimize data import with advanced indexing in the search service. Utilize the BPA Accelerator's search app for precise document retrieval.

## Success Criteria:

- Successfully created the language service and the documents is successfully translated.
- Make sure the project is established by configuring the service resource and linking the training data source effectively.
- Successfully identified the respective field created in the preceding step, providing its confidence score.
- Ensure the accurate selection of the "Select a stage to add it to your pipeline configuration" option to align with the specific requirements of your pipeline configured
- The file retrieval operation was executed successfully, and the relevant document is displayed in the search results.

## Additional Resources:

- Refer to the provided [GitHub repository](https://github.com/MSUSAzureAccelerators/Azure-OpenAI-and-Form-Recognizer-Workshop/blob/main/README.md) for detailed information.

## Prerequisites:

- Familiarity with serverless computing, Form recognizer, and Azure Cognitive Search.
- Knowledge of scalable and efficient document processing.
