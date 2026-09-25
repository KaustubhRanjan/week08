resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = local.resource_group_name
  location            = local.location

  sku           = "Basic"
  admin_enabled = true

  tags = merge(
    var.tags,
    {
      Environment = var.environment
    }
  )
}
