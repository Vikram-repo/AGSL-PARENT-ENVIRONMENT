# app service plan
resource "azurerm_service_plan" "gsl_asp_main" {
  name                = var.asp_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku_name
  tags                = var.asp_tags

  lifecycle {
  prevent_destroy = true
}
}