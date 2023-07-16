terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "terraformazurelearning"
    container_name       = "tfstate"
    key                  = "production.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
