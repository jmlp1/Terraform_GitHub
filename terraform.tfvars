azurerm_region                        = "****" #Region for infrastructure deployment
azurerm_resource_group                = "****" #Resource group for infrastructure deployment
azurermstorage_account_resource_group = "****" #Centralized Resource group for storage account
azurerm_keyvault                      = "****" #Centralized KeyVault
azurerm_stgaccount                    = "*****" #Centralized Storage Account
azurerm_containername                 = "*****" #Centralized Blob Container
node_count                            = 2 #Number value

vm_os = {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts"
  version   = "latest"
}

vm_size              = "Standard_DS1_v2"  # Optional: only needed if you want to override the default value
managed_disk_type    = "Standard_LRS"     # Optional: only needed if you want to override the default value