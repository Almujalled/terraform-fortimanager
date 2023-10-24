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
  default     = "ManagedByTerraform"
}

#variable "provADOM" {
#  description = "ADOMs"
#  type        = string
#  default     = "createdByTerraform"
#}

variable "deviceInfo" {
  type = object({
    name         = string
    adm_usr      = string
    adm_pass     = string
    platform_str = string
    sn           = string
    mgmt_mode    = string
    deviceaction = string
    os_type      = string
    os_ver       = string
  })
  sensitive = false
}

variable "methodAPI" {
  type = string
  description = ""
  default = "add"
  
}
#variable "mgmt_mode" {
#  type        = string
#  description = "add real and model device. Valid values: unreg, fmg, faz, fmgfaz."
#  default = [
#    "unreg",
#    "fmg",
#    "faz",
#    "fmgfaz",
#  ]
#}
#variable "deviceaction" {
#  type        = list(string)
#  description = "Specify add device operations, or leave blank to add real device"
#  default = [
#    "add_model",
#    "promote_unreg",
#  ]
#}
#variable "os_ver" {
#  type        = list(string)
#  description = " add model device only"
#  default = [
#    "unknown",
#    "fos",
#    "fsw",
#    "foc",
#    "fml",
#    "faz",
#    "fwb",
#    "fch",
#    "fct",
#    "log",
#    "fmg",
#    "fsa",
#    "fdd",
#    "fac",
#    "fpx",
#    "fna",
#  ]
#}


#variable "pkg" {
#  description = "Package Details"
#  type        = string
#  default     = "managedByTerraform"
#}

#variable "createADOM" {
#  type = bool
#}
#
#variable "createDevice" {
#  type = bool
#}

#variable "methodAPI" {
#  type        = list(string)
#  description = ""
#  default = [
#    "get",
#    "add",
#    "set",
#    "update",
#  ]
#}

