# Challenge 05: Load Balancing Azure OpenAI Resources

### Estimated Time: 90 minutes

## Introduction:

In this challenge, our team is focused on smartly dividing the workload to ensure everything runs like clockwork. We need to figure out how to use our resources efficiently, adapt swiftly to changes, and keep costs in check. Our goal is to build a strong system that can handle a lot of users at the same time, providing them with a great experience without breaking the bank. We want to create a reliable system that performs well, even when many people are using it.

Load balancing in Azure for OpenAI resources is crucial for optimizing performance and scalability. It ensures that incoming traffic is evenly distributed, preventing overloads, reducing delays, and using resources efficiently. This forms a sturdy foundation for a high-performing OpenAI infrastructure.

After interacting with the Chat App and deploying OpenAI services in the previous challenge, our current focus is on using OpenAI instances with an API management service. We're systematically integrating named values, backend configurations, and API settings to enhance resilience and coverage. To ensure thorough testing and traceability, we're also incorporating an additional OpenAI service in an alternative region, recreating the initial configurations. This iterative process guarantees the robust performance of the OpenAI service across regions, implementing load balancing of AOAI (Artificial OpenAI) resources with defined policies in place.

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

3. APIM’s policy is so sophisticated that it can retry under certain conditions if an error occurs on the back end.
    - Configure and edit the inbound policy to implement the retry method such that the backend HTTP status code is 200.
    - Use the `<forward-request buffer-request-body=”true” buffer-response=”false” />` within the backend policy to forward the API request to another backed for any HTTP status code of 300.

## Additional Resources:

- [About Azure API Management service](https://learn.microsoft.com/en-us/azure/api-management/api-management-key-concepts)
- [Azure-AI-services-openai-quotas-limits](https://learn.microsoft.com/en-us/azure/ai-services/openai/quotas-limits)
- [Policies in Azure API Management](https://learn.microsoft.com/en-us/azure/api-management/api-management-howto-policies)
- [Use named values in Azure API Management policies](https://learn.microsoft.com/en-us/azure/api-management/api-management-howto-properties?tabs=azure-portal)

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
