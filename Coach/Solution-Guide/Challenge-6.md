# Challenge 06: Serverless Document Batch Processing 

### Lab Scenario
In this lab, we've equipped you with the essential artifacts to explore the capabilities of the Form Recognizer Service, OpenAI, and the Business Process Automation Accelerator. Our goal is to empower you to gain insights into utilizing the accelerator for building pipelines across various services, creating AI solutions tailored to your business requirements. 

### Pre-requisites
* The accelerator is deployed and ready in the resource group
* You have an Azure subscription and permission to create a Form Recognizer Resource
* You have access to the sample invoices folder with the invoices to upload

# Solution Guide

### Task 1 - Translate the documents using Translate

#### Task 1.1 - Retrieve your key and document translation endpoint

1. If you have an existing Document Translation resource, navigate directly to your resource page.

1. In the left rail, under Resource Management, select Keys and Endpoint.

1. Copy and paste your key and document translation endpoint in a convenient location, such as Microsoft Notepad. Only one key is necessary to make an API call.

1. You paste your key and document translation endpoint into the code samples to authenticate your request to the Document Translation service.

      ![](../media/T-1.png)
   
#### Task 1.2 - Create Azure Blob Storage containers

1. You need to create containers in your Azure Blob Storage account for source and target files.

      Source container. This container is where you upload your files for translation (required). <br>
      Target container. This container is where your translated files are stored (required).

#### Task 1.3 - Set up your C#/.NET environment and Install Newtonsoft.Json
   
1. Start Visual Studio.

1. On the Get started page, choose Create a new project.

   ![](../media/T-2.png)

1. On the Create a new project page, enter console in the search box. Choose the Console Application template, then choose Next.

   ![](../media/T-3.png)

1. In the Configure your new project dialog window, enter document-translation-qs in the Project name box. Then choose Next.

   ![](../media/T-4.png)

1. In the Additional information dialog window, select .NET 6.0 (Long-term support), and then select Create.

   ![](../media/T-5.png)

1. Right-click on your document-translation-qs project and select Manage NuGet Packages.

   ![](../media/T-6.png)

1. Select the Browse tab and type NewtonsoftJson.

   ![](../media/T-7.png)
   
1. Select the latest stable version from the dropdown menu and install the package in your project.

   ![](../media/T-8.png)

#### Task 1.4 -Translate all documents in a storage container and Run your application

1. Open the Program.cs file.

1. Delete the pre-existing code, including the line Console.WriteLine("Hello World!").

1. Copy and paste the document translation code sample into the Program.cs file.

1. Update {your-document-translation-endpoint} and {your-key} with values from your Azure portal Translator instance.

1. Update {your-source-container-SAS-URL} and {your-target-container-SAS-URL} with values from your Azure portal Storage account containers instance

Once you've added a code sample to your application, choose the green Start button next to document-translation-qs to build and run your program, or press F5.
   
### Instructions

### Task 1: Creating a Form Recognizer Resource

1. Go to the Resource group, search, and select the **Azure AI services multi-service account** resource type with the name similar to **cogservicesbpa{suffix}**.

   ![Alt text](images/select-multi-service.png)

2. Click on the Document Intelligence tab and select **Go to studio**.

   ![Alt text](images/select-document-intelligence.png)

3. In Document Intelligence Studio, scroll down to Custom Models and choose **Try it now**.

   ![Alt text](images/tryitnow.png)

4. Under My Project, click on **+ Create a project**.

   ![Alt text](images/create-a-project.png)

5. Enter the following details and click on **Continue**  **(3)**.
    
   - Project name: **testproject** **(1)**.
   - Description: **Custom model project** **(2)**.

     ![Alt text](images/enter-project-details.png)

6. Enter the following details **Configure service resource** and click on **Continue** **(5)**.

   - Subscription: Select your **Default Subscription** **(1)**.
   - Resource group: **business-process-<inject key="Deployment ID" enableCopy="false"/>** **(2)**.
   - Form Recognizer or Cognitive Service Resource: Select the available Cognitive Service Form Recognizer name similar to **cogservicesbpass{suffix}** **(3)**.
   - API version: **2022-08-31 (3.0 General Availability)** **(4)**.

     ![configuring service resource](images/configure-service-resource.png)

7. Enter the following details **Connect training data source** and click on **Continue** **(8)**.

   - Subscription: Select your **Default Subscription** **(1)**.
   - Resource group: **business-process-<inject key="Deployment ID" enableCopy="false"/>** **(2)**.
   - Check the box to **Create new storage account** **(3)**
   - Storage account name: **formrecognizer<inject key="Deployment ID" enableCopy="false"/>** **(4)**.
   - Location: **East US** **(5)**.
   - Pricing tier: **Standard_LRS Standard** **(6)**.
   - Blob container name: **custommoduletext** **(7)**.
   
        ![storage account](images/connect-training-data-source.png)

8. Validate the information and choose **Create project**.

     ![Alt text](images/create-project.png)

### Task 2: Train and Label data

In this step, you will upload 6 training documents to train the model.

1. Click on **Browse for files**.

     ![Browse for files](images/browse-for-files.png)

2.  On the file explorer, enter the following `C:\Users\Public\Desktop\Data\Custom Model Sample` **(1)** path hit **enter**, select all train JPEG files **train1 to train6** **(2)**, and hit **Open** **(3)**.

     ![train-upload](images/train-upload.png)

3. Once uploaded, choose **Run now** in the pop-up window under Run Layout.

     ![train-upload](images/run-now.png)

4. Click on **+ Add a field** **(1)**, select **Field** **(2)**, enter the field name as **Organization_sample** **(3)** and hit **enter**.

     ![run-now](images/add-field.png)

     ![run-now](images/add-field-name.png)

5. Label the new field added by selecting **CONTOSO LTD** in the top left of each document uploaded. Do this for all six documents.

     ![train-module](images/train-module.png)

6. Once all the documents are labeled, click on **Train** in the top right corner.

     ![Train](images/train-module1.png)

7. Specify the model ID as **customfrs** **(1)**, Model Description as **custom model** **(2)**, from the drop-down select **Template** **(3)** as Build Mode and click on **Train** **(4)**.

     ![Name](images/train-a-new-model.png)

8. Click on **Go to Models**. 

   ![Alt text](images/training-in-progress.png)

9. Wait till the model status shows **succeeded** **(1)**. Once the status Select the model **customfrs** **(2)** you created and choose **Test** **(3)**.

     ![select-models](images/select-models1.png)

10. On the Test model window, click on **Browse for files**. 

     ![select-models](images/test-upload.png)

11. On the file explorer, enter the following `C:\Users\Public\Desktop\Data\Custom Model Sample` **(1)** path hit **enter**, select all test JPEG files **test1 and test2** **(2)**, and hit **Open** **(3)**.

     ![test-file-upload](images/test-file-upload.png)

12. Once uploaded, select one test model, and click on **Run analysis** **(1)**, Now you can see on the right-hand side that the model was able to detect the field **Organization_sample** **(2)** we created in the last step along with its confidence score.

     ![Alt text](images/result.png)

### Task 3: Build a new pipeline with the custom model module in BPA

After you are satisfied with the custom model performance, you can retrieve the model ID and use it in a new BPA pipeline with the Custom Model module in the next step.

1. Navigate back to the Resource groups and select the resource group **business-process -<inject key="Deployment ID" enableCopy="false"/>**.

    ![Alt text](images/rgg.png)

2. Go to the Resource group, search, and select the **Static Web App** resource type with the name similar to **webappbpa{suffix}**.

   ![webappbpa](images/static-web-page.png)

3. On the **Static Web App** page, click on **View app in browser**.

      ![webappbpa](images/formm.png)

4. Once the **Business Process Automation Accelerator** page loaded successfully, click on the **Create/Update/Delete Pipelines**. 

   ![Web APP](images/select-create-pipeline.png)

5. On the **Create Or Select A Pipeline** page, enter New Pipeline Name as **workshop** **(1)**, and click on the **Create Custom Pipeline** **(2)**. 

   ![workshop](images/create-pipeline.png)

6. On the **Select a document type to get started** page, select **PDF Document**

   ![workshop](images/image-document.png)

7. On the **Select a stage to add it to your pipeline configuration** page, search and select for **Form Recognizer Custom Model (Batch)**.

   ![workshop](images/form-recognizer-custom-model.png)

8. On the pop-up, enter the Model ID as **customfrs** **(1)** and click on **Submit** **(2)**. 

   ![Model ID](images/pipeline-model-id.png)

9. On the **Select a stage to add it to your pipeline configuration** page, scroll down to review the **Pipeline Preview**, and click on **Done**.

   ![Pipeline Preview](images/done-pipeline.png)

10. On the **Piplelines workshop** page, click on **Home**. 

      ![home-pipeline](images/home-pipeline.png)

11. On the **Business Process Automation Accelerator** page, click on **Ingest Documents**.

      ![ingest-documents](images/ingest-documents.png)

12. On the **Upload a document to Blob Storage** page, from the drop-down select a Pipeline with the name **workshop** **(1)**, and click on **Upload or drop a file right here**.

      ![Upload a document](images/upload-document-to-blob.png)

13. For documents, enter the following `C:\Users\Public\Desktop\Data\Lab 1 Step 3.7` **(1)** path and hit enter. You can upload multiple invoices one by one.

      ![Upload a document](images/pipeline-folder.png)

### Task 4: Configure Azure Cognitive Search 

1. Navigate back to the resource group window, search, and select **Search Service** with a name similar to **bpa{suffix}**.

   ![search service](images/rg3.png)

2. On the **Search service** page, click on **Import data**.

   ![Data source](images/BPAA1.png)

3. Enter the following details for **Connect to your data**.

   - Data Source: Select **Azure Blob Storage** **(1)**
   - Data Source Name: Enter **workshop** **(2)**.
   - Parsing mode: Select **JSON** **(3)**.
   - Click on **Choose an existing connection** **(4)** under Connection string.
  
     ![Connection to your data](images/connection-to-your-data.png)

4. On the **Storage accounts** page, select the storage account named similar to **bpass{suffix}**. 

     ![Storage account](images/stoarge-account.png)

5. Select **results** **(1)** container from the **Containers** page and click on **Select** **(2)**. It will redirect back to **Connection to your data** page.

     ![Storage account](images/continers.png)   
  
6. On the **Connect to your data** page, enter the **workshop** **(1)** as **Blob folder** and click on **Next : Add cognitive skills (Optional) (2)**.

   ![Connection](images/connection-to-your-data-blob(1).png)

7. On the **Add cognitive skills (Optional)** click on **Skip to : Customize target index**.

8. On the **Customize target index**, enter Index name as **azureblob-index** **(1)**, make all fields **Retrievable** **(2)**, and **Searchable** **(3)**.

      ![Connection](images/retrievable-searchable.png)

9. Expand the **aggregatedResults** **(1)** > **customFormRec** **(2)** > **documents** **(3)** > **fields** **(4)** under it, expand **Organization_sample (5)**. Make the three fields Facetable **(type, valueString & content)** **(6)** and click on **Next: Create an indexer** **(7)**.

      ![import-data](images/BPA5.png)

7. On the **Create an indexer** page, enter the name as **azureblob-indexer** **(1)** and click on **Submit** **(2)**.
   
   ![Create an indexer](images/create-an-indexer.png)

## Review

In this lab, you have accomplished the following:

* Use a sample training data set to train a custom model in the Azure Form Recognizer Studio.
* Label the training data documents with custom fields of interest.
* Test the trained model on test data, visualized results, and confidence scores in the studio.
* Use the custom model in the BPA pipeline.

## More Resources

**Getting Started with Form Recognizer Studio**: https://learn.microsoft.com/en-us/azure/applied-ai-services/form-recognizer/form-recognizer-studio-overview?view=form-recog-3.0.0  
**Form Recognizer Documentation**: https://learn.microsoft.com/en-us/azure/applied-ai-services/form-recognizer/concept-invoice?view=form-recog-3.0.0
