# output the app service default hostname
output "app_hostname" {
  value = module.app.default_hostname
}

# output the resource group name
output "resource_group_name" {
  value = module.rg.name
}
# output the resource group location
output "resource_group_location" {
  value = module.rg.location
}
# output the resource group tags
output "resource_group_tags" {
  value = module.rg.tags
}

# output the resource group id
output "resource_group_id" {
  value = module.rg.id
}

# output the app service plan id
output "app_service_plan_id" {
  value = module.asp.id
}

# output the app service plan name
output "app_service_plan_name" {
  value = module.asp.name
}
# output the app service plan tags
output "app_service_plan_tags" {
    value = module.asp.tags
    }
# output the app service id
output "app_service_id" {
  value = module.app.id
}
# output the app service name
output "app_service_name" {
  value = module.app.app_service_name
}
# output the app service name
output "app_service_webapp_name" {  
  value = module.app.name
}       
# output the app service tags
output "app_service_tags" { 
    value = module.app.tags
    }


# output the name of the app service plan
output "stg_name" {
  value = module.stg.name
}
output "stg_tags" { # output the tags of the app service plan
  value = module.stg.tags
} 