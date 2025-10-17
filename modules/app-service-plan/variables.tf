variable "asp_name" { type = string } # var name for the app service plan
variable "resource_group_name" { type = string } # var name for the resource group
variable "location" { type = string } # var location for the app service plan
variable "asp_os_type" { type = string } # var os type for the app service plan
variable "asp_sku_name" { type = string } # var sku name for the app service plan
variable "asp_tags" { type = map(string) } # var tags for the app service plan