provider "azurerm" {
}

resource "azurerm_resource_group" "rg-tf2" {
  name       = "${var.resource-group}"
  location   = "${var.location}" 
}

resource "azurerm_storage_account" "stor-tf2" {
  name                     = "stortf2"
  location                 = "${var.location}"
  resource_group_name      = "${var.resource-group}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "ctn-tf2" {
  name                  = "ctntf2"
  resource_group_name   = "${var.resource-group}"
  storage_account_name  = "${azurerm_storage_account.stor-tf2.name}" 
  container_access_type = "blob"
}
