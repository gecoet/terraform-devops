provider "azurerm"{}

# TODO Need to update the values - Touch base with James when we have the new environment.
terraform {
  backend "azurerm" {
    resource_group_name  = "SAN-CIBRiskTech-DevOps"
    storage_account_name = "sasandosta001"
    container_name       = "sasanpdstc002"
    key                  = "base-infra.terraform.tfstate"
    ###### #Jenkins injects access_key config here
  }
}
