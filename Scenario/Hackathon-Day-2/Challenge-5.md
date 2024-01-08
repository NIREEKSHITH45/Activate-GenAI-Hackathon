# Challenge 05: Load Balancing Azure OpenAI Resources

## Introduction:

Load balancing in Azure for OpenAI resources is the cornerstone for optimizing performance and scalability. By evenly distributing incoming traffic, it prevents overloads, minimizes latency, and ensures efficient resource utilization, ultimately providing a robust foundation for a high-performing OpenAI infrastructure. In this challenge, the process begins with the usage of the existing OpenAI service. The API management service is then utilized to systematically add named values, backend configurations, and API settings. To enhance resilience and coverage, an additional OpenAI service is used in an alternative region recreating the initial configurations. This iterative process ensures thorough testing and tracing, guaranteeing the robust performance of the OpenAI service across regions making sure the load balancing of AOAI (Artificial OpenAI) resources is implemented by applying the defined policies.

## Challenge Objectives:

**Optimal Resource Allocation**: **Design and implement a load balancing strategy using Azure API Management to efficiently distribute workloads across geographically dispersed OpenAI resources by deploying OpenAI models tailored to the unique requirements of each region, ensuring optimal utilization and minimal latency. The requirements are as follows:**

1. Utilize the existing Azure OpenAI resources across various regions while ensuring the deployment and availability of GPT-35-Turbo and text-embedding-ada-002 models.
   
2. Utilize API Management as an API proxy to link and interface it with Azure OpenAI resources.
    - Configure Azure API Management by incorporating API featuring POST operations to access both the Completions API (gpt-35-turbo) and the Embeddings API (text-embedding-ada-002).
    - Configure Azure API Management to enable load balancing across multiple Azure OpenAI resources upon accessing the APIM endpoint, while also implementing a failover mechanism to switch the backend in case of errors.
    - Automatically load Azure OpenAI endpoints and keys using APIM's **Named Values** and configure the **HTTP(s) endpoint**.

3. Create and update the API's **Inbound processing policies** to adhere to the load balancing capabilities.

4. Use API Management's robust built-in API testing feature.

5. Utilize the **retry** feature of the Azure API Management service to make AOAI redundant.

## Success criteria:

1. Ensure that the OpenAI instances have the GPT-35-Turbo and text-embedding-ada-002 models deployed.

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


