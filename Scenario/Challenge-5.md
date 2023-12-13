# Challenge 05: Load Balancing Azure OpenAI resources

## Introduction:
Welcome to the Load Balancing OpenAI Resources Hackathon! As technology advances, the demand for AI services grows, and effective load balancing becomes paramount. In this hackathon you will explore, innovate, collaborate and develop solutions that ensure the seamless distribution of workload across OpenAI's resources.

## Description:
Throughout this event, participants will explore the intricate landscape of AI services within Azure, understanding the complexities of load balancing across various OpenAI resources. Leveraging the robust capabilities of Azure's API Management Service, participants will devise and implement innovative solutions aimed at achieving seamless and efficient distribution of workloads among these resources.

## Contoso Environment:

1. To access the Azure portal, open a private/incognito window in your browser and navigate to **[Azure Portal](https://portal.azure.com)**.

2. On the **Sign in to Microsoft Azure** tab you will see a login screen, enter the following email/username and then click on **Next**. 
   * Email/Username: <inject key="AzureAdUserEmail"></inject>
   
     ![](media/signin-email.png "Enter Email")

3. Now enter the following password and click on **Sign in**.
   * Password: <inject key="AzureAdUserPassword"></inject>
   
     ![](media/signin-password.png "Enter Password")

4. If you see the pop-up **Stay Signed in?**, click No.

5. If you see the pop-up **You have free Azure Advisor recommendations!**, close the window to continue the lab.

6. If a **Welcome to Microsoft Azure** popup window appears, click **Maybe Later** to skip the tour.

## Challenge Objectives:

**Optimal Resource Allocation**: **Design and implement a load balancing strategy using Azure API Management to efficiently distribute workloads across various OpenAI resources in different regions, ensuring optimal utilization and minimal latency. The requirements are as follows:**

1. Set up a couple of Azure OpenAI resources across diverse regions, deploying the `gpt-35-turbo` and `text-embedding-ada-002` models.

2. Utilize API Management as an API proxy to link and interface it with Azure OpenAI resources.
    - Configure Azure API Management by incorporating API featuring POST operations to access both the Completions API (gpt-35-turbo) and the Embeddings API (text-embedding-ada-002).
    - Configure Azure API Management to enable load balancing across multiple Azure OpenAI resources upon accessing the APIM endpoint, while also implementing a failover mechanism to switch the backend in case of errors.
    - Automatically load Azure OpenAI endpoints and keys using APIM's **Named Values** and configure the **HTTP(s) endpoint**.

3. Create and update the API's **Inbound processing policies** to adhere to the load balancing capabilities.

4. Use API Management's robust built-in API testing feature.

5. Utilize the **retry** feature of Azure API Management service to make AOAI redundant.

## Success criteria:

1. Deploy Azure OpenAI resources
  - Creation of two Azure OpenAI instances, across two diverse regions.

2. Deploy OpenAI models within the created AOAI instances
  - Ensure to have deployed the `gpt-35-turbo` and `text=embedding-ada-002` models within createed instances.

3. Within the APIM service, create an Inbound Policy for the API such that the backend (Azure OpenAI's endpoint URL) and AOAI keys are changed dynamically to implement load balancing capabilities.

4. APIM’s policy is so sophisticated that it has the ability to retry under certain conditions if an error occurs on the back end.
  - Configure and edit the inbound policy to implement the retry method such that the backend HTTP status code is 200.
  - Use the `<forward-request buffer-request-body=”true” buffer-response=”false” />` within the backend policy in order to forward the API request to another backed for any HTTP status code of 300.

## Lab Validation:
