# NIM Deployment on AzureML

This folder contains information on how to deploy NVIDIA Inference Models (NIMs) on Azure Machine Learning (AML). It provides an example deployment along with instructions on how to test the deployment.

# Files
* _deployment.yml - AzureML deployment related information
* _config.sh - Config file for deploying this NIM.

These files will make more sense once the solution guide is drafted.

## Example Deployment

An example NIM has already been deployed on AzureML. You can test the deployment using the provided API details below:

- **Endpoint URL:**  
  [https://llama3-8b-nim-endpoint-aml-1.westeurope.inference.ml.azure.com/](https://llama3-8b-nim-endpoint-aml-1.westeurope.inference.ml.azure.com/)

- **API Token:**  
  `8ohhUlZcsG8tRAsr3XjM0f3d2ZPKZG2O`

- **AzureML Deployment Name:**  
  `llama31-8b-instruct-aml-1`

## Testing the Deployment

You can test the deployment by running the provided script: `test_function_calling.py`.