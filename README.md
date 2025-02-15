# Azure DevOps Pipeline for Terraform Deployment

This document provides a guide to setting up and running an Azure DevOps pipeline for Terraform deployment. The pipeline includes stages for installing Terraform, initializing the backend, planning, applying the Terraform configuration, and configuring the VM with Ansible.

This must be used for existing, re-importing an existing plan to TF or deploying a new one for fresh deployments

## Prerequisites

Before you begin, ensure you have the following resources and configurations in place:

1. **Azure Resource Group**: Create a resource group to manage your resources.
2. **Service Principal**: Create a service principal for authentication. Setup with all the needed rights for creating resource gropus, access central location storage and key vault
3. **Azure DevOps Service Connection**: Create a service connection in Azure DevOps using the service principal credentials.
4. **Azure Storage Account**: Create a storage account for storing the Terraform state file.
5. **Azure Key Vault**: Create a key vault to store sensitive information.
6. **Store Secrets in Key Vault**: Add the necessary secrets to the key vault.

## Pipeline Configuration

### Variables

Define the following variables in your pipeline:

```yaml
variables:
  azureServiceConnection: '*****' #Azure connection setup in AzureDevops and Azure
  keyVaultName: '****' #Azure Key Vault Central Store
  storageAccountName: '*****' #Azure Storage Cental Account
  containerName: '******' #Blob name for storage
  tfplanBlobName: '*****' #TF Plan Name
  storageAccountResourceGroup: '*****' # Resource group for storage account
  deploymentResourceGroup: '*****' # Resource group for infrastructure deployment
  location: '*******'
```
#### Stages
1. **Install Terraform and Setup Environment**
2. **Fetch secrets from Azure Key Vault and generate terraform.tfvars.**
3. **Install Terraform.**
4. **Initialize Terraform**
5. **Initialize the Terraform backend.**
6. **Plan Terraform Deployment**
7. **Plan the Terraform deployment and save the plan output.**
8. **Apply Terraform Plan**
9. **Configure VM with Ansible**
10. **Generate Ansible inventory and configure the VM.**


