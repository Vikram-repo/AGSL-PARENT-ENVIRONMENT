# create a resource group
resource "azurerm_resource_group" "gsl_rg_main" {
  name     = var.name
  location = var.location
  tags     = var.tags

  lifecycle {
  prevent_destroy = true
}
}