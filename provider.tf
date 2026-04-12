provider "azurerm" {
  features {}
  subscription_id = "721ea30a-1562-42c5-89d7-30aeb9ce9522"
}

terraform {
  backend "azurerm" {}
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "5.0.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}