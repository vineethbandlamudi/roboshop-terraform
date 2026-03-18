provider "azurerm" {
  features {}
  subscription_id = "721ea30a-1562-42c5-89d7-30aeb9ce9522"
}

terraform {
  backend "azure" {}
}