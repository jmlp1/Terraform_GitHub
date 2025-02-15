variable "client_id" {
  description = "The client ID for the service principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the service principal"
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID"
  type        = string
}

variable "azurerm_resource_group" {
  description = "The name of the rg"
  type        = string
}

variable "azurermstorage_account_resource_group" {
  description = "The name of the storage account rg group"
  type        = string
}

variable "azurerm_region" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "azurerm_keyvault" {
  description = "The name of the vault"
  type        = string
}

variable "node_count" {
  description = "The name of the vault"
  type        = number
}

variable "vm_os" {
  description = "OS image to deploy"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string  
}

variable "managed_disk_type" {
  description = "The type of managed disk"
  type        = string  
}

variable "azurerm_stgaccount" {
  description = "The name of the storage account"
  type        = string
}

variable "azurerm_containername" {
  description = "The name of the container"
  type        = string
}