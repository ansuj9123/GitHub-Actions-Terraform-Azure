terraform {
    backend "azurerm" {
        resource_group_name   = "terraform-demo"
        storage_account_name  = "terraformpipeline1"
        container_name        = "tfstate"
        key                   = "dev.terraform.tfstate"
      
    }
}

module "RG" {
    source = "./modules/resource_group"
    resource_group_name = var.resource_group_name
    location = var.location
}
