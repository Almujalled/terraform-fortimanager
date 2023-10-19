variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = "project-alpha",
    environment = "dev"
  }
}

variable "cli-template-project-variables" {
  description = "Project Variables"
  type        = list(string)
  default = [
    "lan_ip_edu",
    "lan_ip_fin",
    "mpls_wan_ip",
    "hostname",
    "profile",
    "region",
    "loopback",
    "mpls_wan_gateway",
    "inbandwidth",
    "shaping_profile",
    "outbandwidth",
  ]
}

variable "workingADOM" {
  description = "ADOMs"
  type        = string
  default     = "root"
}


variable "deviceInfo" {
  type = object({
    name         = string
    adm_usr      = string
    adm_pass     = string
    platform_str = string
    sn           = string
  })
  sensitive = false
}

variable "pkg" {
  description = "Package Details"
  type        = string
  default     = "managedByTerraform"
}

variable "createADOM" {
  type = bool
}

variable "createDevice" {
  type = bool
}