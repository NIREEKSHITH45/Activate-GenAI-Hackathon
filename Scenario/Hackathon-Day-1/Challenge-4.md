# Challenge 04: Interact with Chat App

### Estimated Time: 30 minutes

## Introduction:

In this challenge, your team will be focusing on ensuring a smooth experience for people using the chat app. You're team figuring out the best way for conversations to flow, adding interesting features, and making the app easy to navigate. Your team's aim is to craft a chat app that's not only simple and engaging but also something users genuinely enjoy using.

After successfully setting up the Chatapp using Terraform in the previous challenge, You will now diving into the chat app experience. You're team keen on making interactions effortless, enabling effective queries, supporting multilingual conversations, and exploring advanced settings to enhance the overall user experience. your goal is to make the chat app a delightful and user-friendly tool for everyone at Contoso!

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

## Success Criteria:

  - Interacted with the chat application and accessed it successfully
     
> **Important**: In this challenge, we are not validating anything!

## Additional Resources:

- Refer to the  [azure-search-openai-demo](https://github.com/Azure-Samples/azure-search-openai-demo) for detailed information.
  
