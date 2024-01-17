# Challenge 04: Interact with Chat App

### Estimated Time: 30 minutes

## Introduction:

Having successfully deployed the chat app using Terraform in the previous challenge, it's now time to delve into the user interaction aspect. Your focus will be on facilitating seamless interactions, enabling efficient queries, supporting multilingual conversations, and implementing advanced settings to elevate the user experience. In this challange, your focus is test the chat app, OpenAI capabilities and RAG to understand it's potential and make a business case for using these technologies for Contoso Ltd. 


## Challenge Objectives

**1. Access Web Application and Query Construction and Response:**
   
   - In the Azure Portal, search for **`App Services`** and select the web app you deployed in the previous challenge.
   - Click on **"Browse"** to open your web application.
 You will be prompted with the **Northwind Health chat application** as below. 

   ![](../media/lab03-04.png)

- In the chat application provide the below prompt and check how responses are given by the ChatGPT and Azure cognitive search services by interacting to construct search queries, and retrieve candidate information from the knowledge base.

   ```
   What does a Product Manager do?
   ```

- The response not only answered the question based on content found in these documents, but it has also included **citations (1)** to that content to validate the accuracy of the information. Click on an annotation, the app jumps right to the page of the **document (2)** that goes into the comparison of the plans, so that we can read more or do additional validation on the accuracy of the answer under the **citation** section. 


- See how when we click on an annotation, the app jumps right to the page of the document that goes into the comparison of the plans, so that we can read more or do additional validation on the accuracy of the answer. 

   ```
   Does the project manager manage the human resources team?
   ```

- As per our constructed app, we can pass context from previous parts of the chat into the prompt behind the scenes, which enables ChatGPT to answer the question if the project manager manages the human resources team. Click on the citation and you'll see the part of the plan that covers the related information.


**2. Multilingual Query Capability:**
   
- Let us make a slight change to the prompt to ask open AI to take any question that is not asked in English and respond in the language it was asked in. Go to **Developer Settings** and add the below message in the **Override prompt template** section. Click on **Close**.

  ```
   convert prompts to English and respond when asked questions in different language
   ```

- In this override, when we ask a question in a different language, behind the scenes, the prompt gets converted to English to perform the search, and then the model will respond in the same language it was asked in. Enter the below prompt in the chat section and observe it's taking the question, detecting that it's in French, converting it to English, executing it as before, and then returning the expected response like before.

   ```
   Quelles sont les responsabilités du responsible marketing ?
   ```

**3. Advanced Settings Impact:** 
- Go to **Developer Settings**, in the **Exclude category** section enable the check box for **Use query-contextual summaries instead of whole documents** and **Suggest follow-up questions**. Click on **Close** and observe how the responses for prompt will change in the chat by giving the below prompt.

   ```
   What happens in a performance review?
   ```
4. Similarly, test the potential of the OpenAI, AI Search capabilities using the chat interface through your own prompts and conversations. 
5. 
## Success Criteria:

  - Interacted with the chat application and tried various conversations use-cases sucessfully. 
     
> **Important**: In this challenge, we are not validating anything!

## Additional Resources:

- Refer to the  [azure-search-openai-demo](https://github.com/Azure-Samples/azure-search-openai-demo) for detailed information.
  
