# Challenge 05: Load Balancing Azure OpenAI Resources

## Introduction:
Welcome to the Load Balancing OpenAI Resources Hackathon! As technology advances, the demand for AI services grows, and effective load balancing becomes paramount. In this hackathon, you will explore, innovate, collaborate, and develop solutions that ensure the seamless distribution of workload across OpenAI's resources.

## Description:
In this event, participants will dive into the technical intricacies of AI services in Azure, focusing on load balancing across diverse OpenAI resources. Utilizing Azure's API Management Service, they craft innovative solutions for efficient workload distribution. It's a hands-on exploration, merging theoretical insights with practical implementation to optimize AI service orchestration.

## Challenge Objectives:

**Optimal Resource Allocation**: **Design and implement a load balancing strategy using Azure API Management to efficiently distribute workloads across various OpenAI resources in different regions, ensuring optimal utilization and minimal latency. The requirements are as follows:**

1. Utilize pre-deployed GPT-35-turbo and text-embedding-ada-002 models across Azure OpenAI resources in different regions.

2. Utilize API Management as an API proxy to link and interface it with Azure OpenAI resources.
    - Configure Azure API Management by incorporating API featuring POST operations to access both the Completions API (gpt-35-turbo) and the Embeddings API (text-embedding-ada-002).
    - Configure Azure API Management to enable load balancing across multiple Azure OpenAI resources upon accessing the APIM endpoint, while also implementing a failover mechanism to switch the backend in case of errors.
    - Automatically load Azure OpenAI endpoints and keys using APIM's **Named Values** and configure the **HTTP(s) endpoint**.

3. Create and update the API's **Inbound processing policies** to adhere to the load balancing capabilities.

4. Use API Management's robust built-in API testing feature.

5. Utilize the **retry** feature of the Azure API Management service to make AOAI redundant.

## Success criteria:

1. Ensure to have deployed the `gpt-35-turbo` and `text-embedding-ada-002` models within the created instances.

2. Within the APIM service, create an Inbound Policy for the API such that the backend (Azure OpenAI's endpoint URL) and AOAI keys are changed dynamically to implement load balancing capabilities.

3. APIM’s policy is so sophisticated that it has the ability to retry under certain conditions if an error occurs on the back end.
    - Configure and edit the inbound policy to implement the retry method such that the backend HTTP status code is 200.
    - Use the `<forward-request buffer-request-body=”true” buffer-response=”false” />` within the backend policy to forward the API request to another backed for any HTTP status code of 300.

## Additional Resources:

- Refer to [How APIM can be used for load balancing resources](https://shiroyama.medium.com/introduction-eb8b8c94455a) for reference.
- [Azure-AI-services-openai-quotas-limits](https://learn.microsoft.com/en-us/azure/ai-services/openai/quotas-limits)
- [About Azure API Management service](https://learn.microsoft.com/en-us/azure/api-management/api-management-key-concepts)

## Prerequisites:

- Well-based knowledge and understanding of the intricacies of Azure API Management Service.
- **Understanding Load Balancing Policies**: Familiarize yourself with Azure API Management's load balancing policies and choose the most suitable policy for your scenario. Azure API Management provides various policies for load balancing, like round-robin, weighted, and more.
- Basic understanding of Azure services and networking.

## Lab Validations: 

- WIP
