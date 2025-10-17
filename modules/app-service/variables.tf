variable "app_service_name" { type = string } # var name for the app service
variable "resource_group_name" { type = string } # var name for the resource group
variable "location" { type = string } # var location for the app service
variable "service_plan_id" { type = string } # var id for the app service plan
variable "app_service_tags" { type = map(string) } # var tags for the app service