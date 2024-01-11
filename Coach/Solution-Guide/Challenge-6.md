# Challenge 06: Serverless Document Batch Processing 

### Lab Scenario
In this lab, we've equipped you with the essential artifacts to explore the capabilities of the Form Recognizer Service, OpenAI, and the Business Process Automation Accelerator. Our goal is to empower you to gain insights into utilizing the accelerator for building pipelines across various services, creating AI solutions tailored to your business requirements. 

### Pre-requisites
* The accelerator is deployed and ready in the resource group
* You have an Azure subscription and permission to create a Form Recognizer Resource
* You have access to the sample invoices folder with the invoices to upload

# Solution Guide

### Task 1 - Translate the documents using Language Studio

1. Sign into the [language studio](https://aka.ms/dt-language-studio) using Azure credentials.

1. Configure by choosing Translator resource & Azure Storage account.
   
1. Select source & target language(s).
   
1. Choose the source document(s) from your local file system or blob storage and choose the destination for the translated files. 

### Task 2 - Creating a Form Recognizer Resource

1. Go to the Resource group, search, and select the "**Azure AI services multi-service account**" resource type with the name similar **cogservicesbpa{suffix}**

   ![](../media/1.1.png)

2. Click on the Document Intelligence tab and select "**Go to Studio**"

   ![](../media/1.2.png)

3. In Document Intelligence Studio, scroll down to Custom Models and choose **Create new**.

   ![](../media/1.3.png)

4. Under My Project click on  **+ Create a project**

   ![](../media/1.4.png)

5. Enter the following details and click on **Continue**  **(3)**.
    
   - Project name : **testproject** **(1)**.
   - Description : **Custom model project** **(2)**.

     ![](../media/1.5.png)

6. Enter the following details **configuring service resource** and click on **Continue** **(5)**.

   - Subscription : **Default Subscription** **(1)**.
   - Resource group : **business-process-<inject key="Deployment ID" enableCopy="false"/>** **(2)**.
   - Form Recognizer or Cognitive Service Resource: Select the available Cognitive Service Form Recognizer name similar to **cogservicesbpass{suffic}** **(3)**.
   - API version : **2022-08-31 (3.0 General Availability)** **(4)**.

     ![](../media/1.6.png)

7. Enter the following details **Connect training data source** and click on **Continue** **(8)**.

   - Subscription : **Default Subscription** **(1)**.
   - Resource group : **business-process-<inject key="Deployment ID" enableCopy="false"/>** **(2)**.
   - Check the box to **Create new storage account** **(3)**
   - Storage account name : **formrecognizer<inject key="Deployment ID" enableCopy="false"/>** **(4)**.
   - Location : **East US** **(5)**.
   - Pricing tier : **Standard_LRS Standard** **(6)**.
   - Blob container name : **custommoduletext** **(7)**.
   
        ![](../media/1.7.png)

8. validate the information and choose **create project**

    ![](../media/1.8.png)

### Task 3 - Train and Label data
In this step, you will upload 6 training documents to train the model.

1. Click on **Browse for files** 

     [](../media/2.1.png)

2.  On the file explorer enter the following `C:\Users\Public\Desktop\Data\Custom Model Sample` **(1)** path hit **enter**, select all train JPEG files **train1 thought train6** **(2)**, and hit **Open** **(3)**.

     [](../media/2.2.png)

3. Once uploaded, choose **Run now** in the pop-up window under Run Layout.

     [](../media/2.3.png)

4. Click on **+ Add a field** **(1)**, select **Field** **(2)** , enter the field name as **Organization_sample** **(3)** and hit **enter**.

     ![run-now](images/add-field.png)

     ![run-now](images/add-field-name.png)

5. Label the new field added by selecting **CONTOSO LTD** in the top left of each document uploaded. Do this for all the six documents.

     ![train-module](images/train-module.png)

6. Once all the documents are labeled, click on **Train** in the top right corner.

     ![Train](images/train-module1.png)

7. Specify the model ID as **customfrs** **(1)**, Model Description as **custom model** **(2)**, from the drop down select **Template** **(3)** as Build Mode, and click on **Train** **(4)**.

     ![Name](images/train-a-new-model.png)

8. Click on **Go to Models**. 

   ![Alt text](images/training-in-progress.png)

9. Wait till the model status shows **succeeded** **(1)**.Once the status  Select the model **customfrs** **(2)** you created and choose **Test** **(3)**.

     ![select-models](images/select-models1.png)

10. On the Test model window, click on **Browse for files**. 

     ![select-models](images/test-upload.png)

11. On the file explorer enter the following `C:\Users\Public\Desktop\Data\Custom Model Sample` **(1)** path hit **enter**, select all test JPEG files **test1 and test2** **(2)**, and hit **Open** **(3)**.

     ![test-file-upload](images/test-file-upload.png)

12. Once uploaded, select one test model and click on **Run analysis** **(1)**, now you can see on the right-hand side, that the model was able to detect the field **Organization_sample** **(2)** we created in the last step along with its confidence score.

     ![Alt text](images/result.png)

### Task 4 - Build a new pipeline with the custom model module in BPA

After you are satisfied with the custom model performance, you can retrieve the model ID and use it in a new BPA pipeline with the Custom Model module in the next step.

1. Navigate back to the Resource Group and select the resource group **business-process-<inject key="Deployment ID" enableCopy="false"/>**.

     ![RG](../images/rg.png)

2. Go to the Resource group, search, and select the **Static Web App** resource type, with the name similar **webappbpa{suffix}**.

   ![webappbpa](images/static-web-page.png)

3. On the **Static Web App** page, click on **Browse**.

      ![webappbpa](images/form.png)

4. Once the **Business Process Automation Accelerator** page loaded successfully, click on the **Create/Update/Delete Pipelines**. 

   ![Web APP](images/select-create-pipeline.png)

5. On the **Create Or Select A Pipeline** page, Enter New Pipeline Name as **workshop** **(1)**, and click on the **Create Custom Pipeline** **(2)**. 

   ![workshop](images/create-pipeline.png)

6. On the **Select a document type to get started** page, select **PDF Document**

   ![workshop](images/image-document.png)

7. On **Select a stage to add it to your pipeline configuration** page, search and select for **Form Recognizer custom model (batch)**.

   ![workshop](images/form-recognizer-custom-model.png)

8. On the pop-up enter the Model ID as **customfrs** **(1)** and click on **Submit** **(2)**. 

   ![Model ID](images/pipeline-model-id.png)

9. On the **Select a stage to add it to your pipeline configuration** page, scroll down to review the **Pipeline Preview**, and Click on **Done**.

   ![Pipeline Preview](images/done-pipeline.png)

10. On the **piplelines workshop** page, click on **home**. 

      ![home-pipeline](images/home-pipeline.png)

11. On the **Business Process Automation Accelerator** page, Click on **Ingest Documents**.

      ![ingest-documents](images/ingest-documents.png)

12. On the **Upload a document to Blob Storage** page, from the drop-down select a Pipeline with name **workshop** **(1)**, and click on **Upload or drop a file right here**.

      ![Upload a document](images/upload-document-to-blob.png)

13. For documents, enter the following `C:\Users\Public\Desktop\Data\Lab 1 Step 3.7` **(1)** path and hit enter. You can upload multiple invoices one by one.

      ![Upload a document](images/pipeline-folder.png)

### Task 5 - Configure Azure Cognitive Search 

1. Navigate back to the resource group window, search, and select **Search Service** with the name similar to **bpa{suffix}**

   ![search service](images/rg3.png)

2. On the **Search Service** page, click on **Import Data**.

   ![Data source](images/static-web-page-browse.png)

3. Enter the following details for **Connection to your data**.

   - Data Source : Select **Azure Blob Storage** **(1)**
   - Data Source Name : Enter **workshop** **(2)**.
   - Parsing mode : Select **Json** **(3)**.
   - Click on **Choose an existing connection** **(4)** under connection string.
  
     ![Connection to your data](images/connection-to-your-data.png)

4. On the **Storage account** page, select the storage account named similar to **bap{suffix}**. 

     ![Storage account](images/stoarge-account.png)

5. Select **results** **(1)** container from the **Containers** page and click on **Select** **(2)**. It will redirect back to **Connection to your data** page.

     ![Storage account](images/continers.png)   
  
6. On the **Connection to your data** page, enter the **workshop** **(1)** in **Blob folder** and click on **Next : Add cognitive skills (Optional)** (2).

   ![Connection](images/connection-to-your-data-blob(1).png)

7. On the **Add cognitive skills (Optional)** click on **Skip to : Customize target index**.

8. On the **Customize target index**, enter Index name as **azureblob-index** **(1)**, make all fields **Retrievable** **(2)**, and **Searchable** **(3)**.

      ![Connection](images/retrievable-searchable.png)

9. Expand the **content** **(1)** > **aggregatedResults** **(2)** > **customFormRec**  **(3)** > **documents** **(4)** > **fields** **(5)** under it, expand **Organization_sample**. Make the three fields Facetable **(type, valueString & content)** **(6)** and click on **Next: Create an indexer** **(7)**.

      ![import-data](images/import-data.png)

7. On the **Create an indexer** page, enter the name as **azureblob-indexer** **(1)** and click on **Submit** **(2)**.
   
   ![Create an indexer](images/create-an-indexer.png)


### Task 6 - Use Sample Search Application

1. Navigate back to the **Business Process Automation Accelerator** home page and click on **Sample Search Application**.

   ![Sample Search Applicationt](images/sample-search-application.png)

2. On the **Sample Search Application** page, in the search bar enter **invoice1** **(1)** and click on **search** **(2)**.

   ![output](images/output.png)

## More Resources  
Getting Started with Form Recognizer Studio - https://learn.microsoft.com/en-us/azure/applied-ai-services/form-recognizer/form-recognizer-studio-overview?view=form-recog-3.0.0  
Form Recognizer Documentation - https://learn.microsoft.com/en-us/azure/applied-ai-services/form-recognizer/concept-invoice?view=form-recog-3.0.0
