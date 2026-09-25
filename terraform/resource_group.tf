# Either create a new resource group (own subscription, e.g. Azure for
# Students) or reuse an existing, pre-provisioned one (Deakin lab
# environment, where only the "deakinuni" resource group is available).
resource "azurerm_resource_group" "rg" {
  count = var.use_existing_resource_group ? 0 : 1

  name     = var.resource_group_name
  location = var.location

  tags = merge(
    var.tags,
    {
      Environment = var.environment
    }
  )
}

data "azurerm_resource_group" "existing" {
  count = var.use_existing_resource_group ? 1 : 0

  name = var.resource_group_name
}

locals {
  resource_group_name = var.use_existing_resource_group ? data.azurerm_resource_group.existing[0].name : azurerm_resource_group.rg[0].name
  location            = var.use_existing_resource_group ? data.azurerm_resource_group.existing[0].location : azurerm_resource_group.rg[0].location
}
