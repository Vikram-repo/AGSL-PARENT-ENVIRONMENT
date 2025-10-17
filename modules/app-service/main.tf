# linux web app
resource "azurerm_windows_web_app" "gsl_webapp_main" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    minimum_tls_version = "1.2"
  }

  https_only = true

  tags = var.app_service_tags

lifecycle {
  prevent_destroy = true
}
}
