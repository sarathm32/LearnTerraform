terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.31.0"
    }

  }
}

provider "azurerm" {
  # Configuration options
  features {}

}


resource "azurerm_resource_group" "vadapav-rg" {
  name     = "vadapav-rg"
  location = "south india"
  tags = {
    "env"  = "prod"
    "type" = "snacks"
  }
}
