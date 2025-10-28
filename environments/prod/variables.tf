variable "environment" {type = string} # dev, prod, etc.

variable "location" { type = string} # Azure location

variable "project_name" { type = string} # project name

variable "subscription_id" { 
 sensitive = true
 type = string
}

variable "tenant_id" { # tenant id
  type      = string
  sensitive = true # sensitive variable
}

variable "asp_sku_name" { # app service plan sku name
  type    = string
  default = "B1"
}

variable "asp_os_type" { # app service plan os type
  type    = string
  default = "Windows"
}