# local variables for common tags
locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
    Template_URL   = "https://github.com/your-org/greystar-living-iac"
    MonitoredBy    = "Datadog"
    Workload       = "GSL"
  }
}

# Create Resource Group
module "rg" {
  source  = "../../modules/resource-group"
  name    = "${var.project_name}-${var.environment}-rg"
  location = var.location
  tags    = local.common_tags
}

# Create App Service Plan
module "asp" {
  depends_on = [ module.rg ]
  source = "../../modules/app-service-plan"
  asp_name            = "${var.project_name}-apis-${var.environment}-asp"
  resource_group_name = module.rg.name
  location            = module.rg.location
  asp_sku_name        = var.asp_sku_name
  asp_os_type         = var.asp_os_type
  asp_tags            = local.common_tags
}

# Create App Service
module "app" {
  depends_on = [ module.rg ]
  source = "../../modules/app-service"
  app_service_name     = "${var.project_name}-apis-${var.environment}-as"
  resource_group_name  = module.rg.name
  location             = module.rg.location
  service_plan_id      = module.asp.id
  app_service_tags     = local.common_tags
}
