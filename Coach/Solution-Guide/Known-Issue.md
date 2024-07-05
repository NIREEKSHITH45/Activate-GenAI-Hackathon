# Known Issues

## Challenge- 03 

1. While deploying Azure resources if you encounter the following error can be ignored wait for the deployement to get completed.

## Challenge- 05

1. If you encounter validation issue in **Translator** due to **Region Constrain** kindly change the primary region to **EastUS2** and procced with next step.

     ![](../media/Active-image120.png)

1. If you encounter an validation issue in Azure OpenAI model due to Token Per mintue (TPM) quota issue please follow any one the below mentioned steps and try to re-deploy the ARM template.


    1.  Decrease Azure OpenAI resource - model token Per mintue(TPM)  
   
    2.  Delete the existing OpenAI resource make sure to purge the OpenAI resource  
