# Challenge 05: Load Balancing Azure OpenAI Resources

### Estimated Time: 90 minutes

## Introduction:

Building on your experience with deploying and interacting with the AI-powered chat application, this challenge introduces a critical component for scalability and efficiency: load balancing for Azure OpenAI resources. Your task is to create a system that not only handles high user traffic smoothly but also optimizes resource utilization and maintains performance across different regions. This is key to providing a consistent and reliable user experience for Contoso's chat app, especially during peak usage times.


Utilizing Azure API Management (APIM), you'll set up a load balancing mechanism for the OpenAI services. This setup will distribute workloads evenly across multiple OpenAI instances, ensuring high availability and fault tolerance. By doing so, you'll enhance the chat app's capacity to serve a larger audience efficiently, while maintaining cost-effectiveness and robust performance.



## Challenge Objectives:


1. **Multi-Region OpenAI Deployment:**
   - Ensure the deployment of Azure OpenAI instances in multiple regions, with models like GPT-3.5 Turbo and Text Embedding Ada-002.
   - Focus on geographic dispersion to reduce latency and optimize user experiences.
   - [NOTE]: You may use previously deployed Azure OpenAI Instances for this challange. 

   
2. **Set up API Management as a proxy to manage traffic to Azure OpenAI resources:**
    - Integrate POST operations for accessing the Completions API (GPT-3.5 Turbo) and the Embeddings API (Text Embedding Ada-002) within APIM.
    - Implement load balancing across OpenAI resources with a failover mechanism for backend errors.
    - Use APIM’s Named Values for dynamic configuration of OpenAI endpoints and keys, ensuring efficient routing and resource management.

3. **API Inbound Processing Policies:**
    - Develop inbound processing policies in APIM to support load balancing.
    - Include policies for dynamic backend switching and error handling.
      
4. **Testing and Redundancy:**
    - Utilize APIM's testing feature to validate the load balancing setup.
    - Implement the retry feature in APIM for enhanced redundancy and fault tolerance.

5. **Chat App Configuration Update:**
    - Modify the previously deployed chat application's configuration to connect to the OpenAI service via the newly set up APIM endpoint.
    - Ensure the chat app seamlessly integrates with this updated architecture, maintaining its functionality and performance.

## Success criteria:

1. Ensure that the OpenAI instances have the GPT-35-Turbo and text-embedding-ada-002 models deployed.

2. Within the APIM service, create an Inbound Policy for the API such that the backend (Azure OpenAI's endpoint URL) and AOAI keys are changed dynamically to implement load balancing capabilities.

3. APIM’s policy is so sophisticated that it can retry under certain conditions if an error occurs on the back end.
    - Configure and edit the inbound policy to implement the retry method such that the backend HTTP status code is 200.
    - Use the `<forward-request buffer-request-body=”true” buffer-response=”false” />` within the backend policy to forward the API request to another backed for any HTTP status code of 300.
  
4. The chat application should be updated and functioning correctly, connecting to OpenAI via the APIM endpoint.


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
