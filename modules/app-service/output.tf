
output "default_hostname" {value = azurerm_windows_web_app.gsl_webapp_main.default_hostname}# output the default hostname of the web app
output "name" {value = azurerm_windows_web_app.gsl_webapp_main.name}# output the name of the web app
output "id" {value = azurerm_windows_web_app.gsl_webapp_main.id}# output the id of the web app
output "app_service_name" {value = azurerm_windows_web_app.gsl_webapp_main.name}# output the app service name
output "tags" {value = azurerm_windows_web_app.gsl_webapp_main.tags}# output the tags of the web app