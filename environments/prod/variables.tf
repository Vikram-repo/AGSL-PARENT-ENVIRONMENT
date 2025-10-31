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

variable "stg_name" {
  default = "cusgslstorageprodst"
}
variable "account_tier" { # name for the account tier
  type    = string
  default = "Standard"
}

variable "account_replication_type" { # name for the account replication type
  type    = string
  default = "LRS"
}

variable "account_kind" { # name for the account kind
  type    = string
  default = "BlobStorage"
}

variable "hierarchical_namespace" { # name for the hierarchical namespace
  default = "true"
  type    = bool

}
