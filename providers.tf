terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  backend "azurerm" {
    resource_group_name  = var.azurerm_resource_group
    storage_account_name = var.azurerm_stgaccount
    container_name       = var.azurerm_containername
    key                  = "terraform.tfstate"
  }
}