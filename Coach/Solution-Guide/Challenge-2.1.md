# Challenge 01: Deploy NVIDIA NIM to Azure

## Solution Guide

## Generate NGC API KEY

> **Note:** This process of getting NGC API key is no longer recommended. Participant is recommended to get API key through build.nvidia.com as mentioned in the Scenario page.

The NVIDIA API key is a unique identifier used to authenticate requests to NVIDIA's APIs, such as the NGC (NVIDIA GPU Cloud) services. This key allows developers to access various resources, including pre-trained models, GPU-accelerated software, and container images. Obtaining an API key typically involves creating an account on NVIDIA's developer portal and generating the key within the account settings. It is important to keep this key secure, as it grants access to your NVIDIA resources and can be used for billing purposes.

1. Please log in to [nvidia](https://ngc.nvidia.com/signin) account using your credentials.

   >**Note:** If you don't have an account, simply enter your email and submit, and you'll be redirected to the account creation page to provide the necessary details and set up your account.

1. Once your account is created or you've successfully logged in, navigate to the Developer Portal.

1. Navigate to [NVIDIA Devloper Portal](https://developer.nvidia.com/developer-program?ncid=pa-srch-goog-746366&_bt=699127533347&_bk=join%20nvidia%20developer%20program&_bm=b&_bn=g&_bg=161777607269&gad_source=1&gclid=Cj0KCQjwxsm3BhDrARIsAMtVz6MYF3MjayqdjwpkljkJ5ZSVv8IqKIExaNHyiPgUykfiJPplssYqyeIaAlNDEALw_wcB) and Click on the **join** option from the top.

   ![](../../Coach/media/nvidia1.png)

1. Log in to your account using your credentials to access the platform and its features. If you encounter any issues, ensure your login details are correct or reset your password if needed.

   ![](../../Coach/media/nvidia2.png)

1. If prompted, fill out the form to complete your profile setup.

   ![](../../Coach/media/nvidia3.png)

1. Click on "Account" at the top of the page and navigate to the "Setup" section.

   ![](../../Coach/media/nvidia4.png)

2. Click on **Generate API Key** to create a new key for accessing the necessary services.

   ![](../../Coach/media/nvidia5.png)

3. From the top, click on **+ Generate API Key** to create a new API key.

   ![](../../Coach/media/nvidia8.png)

1. Click on **Confirm** to generate your new API key.

   ![](../../Coach/media/nvidia9.png)

1. Carefully copy your generated API key, as it will be essential for accessing various services and features. Ensure you store it securely, as it may not be displayed again after you leave the page.

   ![](../../Coach/media/nvidia7.png)

### Accessing the Azure portal

>**Important**: You can find the Username and Password within the environment by navigating to the **Environment** **(1)** tab in the left pane then copy the **Azure Username** **(2)** and **Azure Password** **(3)**, which will be required for signing into the Azure portal in later steps and you can record the **Deployment Id** **(4)**, which can be used to provide a unique name to the resources during deployment.

>**Note**: Numbers and ID's values may vary kindly ignore values in screenshots and copy values from **Environment** tab.

 ![](../media/Active-image19.png)
 ![](../media/Active-image(20).png)

1. To access the Azure portal, within labvm open **Microsoft Edge** and browser to the [Azure Portal](https://portal.azure.com/).

1. On the **Sign into Microsoft Azure tab**, you will see a login screen. Enter the following email/username, and then click on **Next**.
   
   - **Email/Username:** <inject key="AzureAdUserEmail"></inject>

     ![](../media/Active-image1.png)

1. Now enter the following password and click on **Sign in**.

   - **Password:** <inject key="AzureAdUserPassword"></inject>

      ![](../media/Active-image2.png)

1. When **Action Required** window pop up click on **Ask Later**.

    ![](../media/Active-image3.png)
   
1. If you see the pop-up **Stay Signed in?**, click **No**.

    ![](../media/Active-image4.png)

1. If a **Welcome to Microsoft Azure** pop-up window appears, click **Cancel** to skip the tour.

    ![](../media/Active-image5.png)

### Create Container Registries

Azure Container Registry (ACR) is a managed Docker container registry service that allows you to store and manage private Docker container images and artifacts in Azure. It provides a secure and scalable solution for building, deploying, and managing containerized applications, enabling seamless integration with Azure services.

1. In the search bar of the Azure portal, type **Container registries** (1). From the search results, select **Container registries** (2) to access the container registry management section.

   ![](../../Coach/media/cr1.png)

1. Click on **+ Create**.

1. On the **Basics** tab of Create **Container Registry**, provide details as mentioned in the table below and select **Review + create** (5) at the bottom of the page and subsequently click on **Create**.

    | Setting | Action |
    | -- | -- |
    | **Subscription** | <inject key="SubscriptionID"></inject> |
    | **Resource Group** | **Activate-GenAI** (1) |
    | **Registry name** | **amlregistry-<inject key="DeploymentID" enableCopy="false"/>** (2) |
    | **Location** | **East US 2** (Choose the same location where the resource group) (3) |
    | **Pricing plan** | **Standard** (4) |

   ![](../../Coach/media/cr2.png)

   ![](../../Coach/media/cr3.png)

1. Once the deployment is completed, click on **Go to resource**.

1. From the Overview page copy your subscription id you will use this later

   ![](../../Coach/media/cr4.png)

### Visual Studio config.sh file update

1. Start **Visual Studio Code** by launching it from your desktop.

   ![](../../Coach/media/vscode1.png)

1. Go to the **Explorer** panel in the upper left corner, click on **Open Folder**, and then select the **nim-deploy** folder from your Desktop.

1. Navigate to the **cli folder**, and then click on **Select Folder** to open it in Visual Studio Code.

   ```
   Desktop\nim-deploy\cloud-service-providers\azure\azureml\cli
   ```

   ![](../../Coach/media/vscode2.png)

1. Select **Yes, I trust the authors**.

   ![](../../Coach/media/vscode3.png)

1. Open the `config.sh` file and update the values as needed. You can refer to the `example_config.sh` file for guidance on the appropriate configurations and settings.

    | Setting | Action |
    | -- | -- |
    | **subscription_id** | <inject key="SubscriptionID"></inject> |
    | **resource_group** | **Activate-GenAI**  |
    | **Registry name** | **amlregistry-<inject key="DeploymentID" enableCopy="false"/>**  |
    | **workspace** | **ml-workspace** (Provide the name of workspace you want to create) |
    | **location** | **EastUS2** (Choose the same location where the resource group) |
    | **ngc_api_key** | Provide the NGC key  |
    | **email_address** | Enter the email from Environmental Details tab  |
    | **acr_registry_name** | **amlregistry**|
    | **image_name** | **nim-meta-llama-3.1-8b-instruct:latest**|

   ![](../../Coach/media/vscode4.png)

   ![](../../Coach/media/vscode5.png)

1. Press **Ctrl + S** to save the changes you made to the file.

##  Create AzureML Deployment of the NIM Container

1. Click on the Start menu and search for **Git Bash**. Once you find it, right-click on **Git Bash** and select **Run as Administrator** to launch Git Bash with elevated privileges.

1. Run the following command, This command downloads the latest version of jq, a lightweight and flexible command-line JSON processor, and saves it as an executable file named `jq.exe` in the `/usr/bin/` directory, making it accessible for command-line use.

   ```
   curl -L -o /usr/bin/jq.exe https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe
   ```

1. Now, install the ml extension

   ```
   az extension add -n ml
   ```

   ```
   az extension update -n ml
   ```

1. Run the help command to verify your installation and see available subcommands:

   ```
   az ml -h
   ```

1. Use the command below to navigate to the directory:

   ```
   cd C:/Users/Public/Desktop/nim-deploy/cloud-service-providers/azure/azureml/cli
   ```

## Login to Azure with Your Credentials

1. Update your subscription ID with the one you have copied.
   
   - **Subscription Id:** - <inject key="SubscriptionID"></inject>
   - **Username:** <inject key="AzureAdUserEmail"></inject>
   - **Password:** <inject key="AzureAdUserPassword"></inject>

   ```
   source config.sh
   ```
   ```
   az login
   az account set -s ${subscription_id}
   ```
   > **Note:** If you encounter any issues during login, you can execute the following command.

   ```
   az account clear
   az config set core.enable_broker_on_windows=false
   az login --user <Username> --password <Password>
   az account set -s ${subscription_id}
   ```

1. This will prompt an Azure login window; please select your credentials to log in.

### Setup AzureML Workspace

1. Execute the following command to create a new AzureML workspace with the "Azure ML Secrets Reader" role assignment.

   ```cmd
    ./1_set_credentials.sh --create_new_workspace
   ```
   > **Note:** The above command creates a new workspace with the workspace name provided in the config.sh file.

1. You can find the newly created worksapce in azure

   ![](../../Coach/media/bash1.png)

### Store NGC API Key for Use in the AzureML Deployment

1. To Store NGC API Key for Use in the AzureML Deployment.You have two options for storing the NGC API Key:

   >**Note :** The NGC API Key needs to be stored within Azure so the AzureML workspace can access it during deployment. The API key is required to pull the correct model from the NGC model  catalog. The key can be provided as a workspace connection to the AzureML workspace.
   
   **Store the Key as a Workspace Connection:**
   Store the NGC API Key as a custom credential using a workspace connection.

   This script stores the NGC API Key as a workspace connection credential and verifies if the provided workspace can access it.

   Run the following script to configure this and verify the connection

   ```cmd
    ./2_provide_ngc_connection.sh
   ```

### Save NIM Container in Your Container Registry

Pull the NIM Docker container for the model specified in the `config.sh` file. Create another Docker container wrapped around the NIM container for deployment in AzureML and push this new container to an Azure container registry that can be accessed by your AzureML endpoint. All required commands are provided in the `3_save_nim_container.sh` script.

1. Run the following command to **save the NIM container in your container registry**.

   ```cmd
   ./3_save_nim_container.sh
   ```

1. Navigate to your container registry (**amlregistry**) , Under the service click on the Respositiories select your **nim-meta-llama-3.1-8b-instruct** regiestry, here you will find your image is pushed with the tag name latest.

   ![](../../Coach/media/bash2.png)

### Create Managed Online Endpoint

1. Run the following command to **create a managed online endpoint**.

   ```cmd
   ./4_create_endpoint.sh
   ```

   >**Note :** This command creates an endpoint with the name provided in the config.sh file.

### Role Assignment

1. Go to **amlregistry** container regiestry first. navigate to **Access control (IAM)** (1). Click on **+ Add**(2) and choose **Add role assignment** (3). This allows you to assign specific roles to users, groups, or applications, controlling their permissions to manage resources associated with the app service.

   ![](../../Coach/media/bash3.png)

1. In the **Add role assignment** page, under the Role tab, choose **Job function roles** (1). Search and select **AcrPull** (2) within this category, and then click **Next** (3) to proceed.

   ![](../../Coach/media/bash4.png)

1. Next, under the **Members** tab, select **Managed identity** (1) for Assign access to, and then click on **+ Select members** (2). Further, under the **Select managed identities** on the right, choose **Machine learning online endpoint** (3) for **Managed identity**. Finally, under **Selected members**, choose the **llama3-1-8b-nim-endpoint-aml-1** (4), of choice and then continue by clicking on **Select** (5) and **Next** (6).

   ![](../../Coach/media/bash5.png)

1. Click on **Review + assign**.

### Create AzureML Deployment of the NIM Container

1. Create a new file named **deployment1.yml** in the **azureml_files** folder. 

1. Use the values from the `config.sh` file to replace the following placeholders in the `deployment.yml` file:

- Replace `deployment_name_placeholder` with your actual deployment name.
- Replace `endpoint_name_placeholder` with your actual endpoint name.
- Replace `image_name_placeholder` with your desired image name.
- Replace `acr_registry_placeholder` with your Azure Container Registry (ACR) name.
- Replace `instance_type_placeholder` with the appropriate instance type.

   ```
   $schema: https://azuremlschemas.azureedge.net/latest/managedOnlineDeployment.schema.json
   name: deployment_name_placeholder
   endpoint_name: endpoint_name_placeholder
   environment: 
   name: image_name_placeholder-env
   image: acr_registry_placeholder.azurecr.io/image_name_placeholder
   inference_config:
         liveness_route:
            path: /v1/health/ready
            port: 8000
         readiness_route:
            path: /v1/health/ready
            port: 8000
         scoring_route:
            path: /
            port: 8000
   instance_type: instance_type_placeholder
   instance_count: 1
   environment_variables:
      NGC_API_KEY: ${{azureml://connections/ngc/credentials/NGC_API_KEY}}
   ```

3. After updating your code based on the provided instructions, it will look similar to the image below:

   ![](../../Coach/media/bash6.png)

4. After making the necessary changes, save the file.

5. Run the following command to **deploy the NIM container in AzureML**. IT will takes 10-15 mins to complete the deployment.

   > **Note:** Ensure to update your **$resource_group** and **$workspace** with the appropriate values before proceeding.

    ```cmd
   $ az ml online-deployment create -f azureml_files/deployment1.yml --resource-group $resource_group --workspace-name $workspace
   ```
   >**Note :** Ensure that the provided Azure Container Registry (ACR) can be accessed by your AzureML endpoint by checking if your endpoint has the "AcrPull" role assignment on the ACR.

## Verify Your Connection

Verify your deployment using the `test_chat_completions.sh` script. Modify the URL to your endpoint URL and add the following headers:
`-H 'Authorization: Bearer <your-azureml-endpoint-token>' -H 'azureml-model-deployment: llama3-1-8b-nim-deployment-aml-1'`

  ```
  curl -X 'POST' \
    '
  https://llama-3-1-8b-nim-endpoint-aml-1.eastus2.inference.ml.azure.com/v1/chat/completions'
  \
    -H 'accept: application/json' \
    -H 'azureml-model-deployment: llama-3-8b-nim-deployment-aml-2' \
    -H 'Authorization: Bearer rh5Pm064EmOdPdiHfn5DPit7BdHriobu' \
    -H 'Content-Type: application/json' \
    -d '{
    "messages": [
      {
        "content": "You are a polite and respectful chatbot helping people plan a vacation.",
        "role": "system"
      },
      {
        "content": "What should I do for a 4 day vacation in Spain?",
        "role": "user"
      }
    ],
    "model": "meta/llama-3.1-8b-instruct",
    "max_tokens": 500,
    "top_p": 1,
    "n": 1,
    "stream": false,
    "stop": "\n",
    "frequency_penalty": 0.0
  }
  ```
