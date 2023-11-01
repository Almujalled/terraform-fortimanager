variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = "project-alpha",
    environment = "dev"
  }
}


#variable "adomVARS" {
#  description = "Metadata Vars per ADOM (Customer)"
#  type = map(object({
#    name = string
#    description = string
#    scopetype = string
#    adom      = string
#    default_value     = string
#    dynamic_mapping = object({
#      _scope = object({
#        name = string
#        vdom = string
#      })
#    value = string
#    })
#  }))
#}

variable "device" {
  type = map(object({
    type         = string
    count        = number
    name         = string
    adm_usr      = string
    adm_pass     = string
    platform_str = string
    sn           = string
    mgmt_mode    = string
    deviceaction = string
    os_type      = string
    os_ver       = string
    description  = string
    latitude     = string
    longitude    = string
    ip           = string
    metadata = object(
      {
        address = string
        org     = string
        email   = string
        phone   = string
    })
  }))
  # default = {
  #   Hub01 = {
  #     type         = "hub"
  #     name         = "Oslo-Hub"
  #     adm_usr      = "admin"
  #     adm_pass     = ""
  #     platform_str = "FortiGate-VM64-KVM"
  #     sn           = "FGVMEVDNB1HFA86B"
  #     mgmt_mode    = "fmg"
  #     deviceaction = "add_model"
  #     os_type      = "fos"
  #     os_ver       = "7.0"
  #     description  = "Managed By Terraform"
  #     latitude     = "60.37309"
  #     longitude    = "5.339208"
  #     metadata = (
  #       {
  #         address = "Fjøsangerveien 65"
  #         org     = "Eviny Digital AS"
  #         email   = "ghaith.almujalled@eviny.no"
  #         phone   = "+4745402619"
  #     })
  #   }
  #   Spoke01 = {
  #     type         = "spoke"
  #     name         = "storsenter-1"
  #     adm_usr      = "admin"
  #     adm_pass     = ""
  #     platform_str = "FortiGate-VM64-KVM"
  #     sn           = "FGVMEVYBU0WTJJC0"
  #     mgmt_mode    = "fmg"
  #     deviceaction = "add_model"
  #     os_type      = "fos"
  #     os_ver       = "7.0"
  #     description  = "Managed By Terraform"
  #     latitude     = "60.37309"
  #     longitude    = "5.339208"
  #     metadata = (
  #       {
  #         address = "Fjøsangerveien 65"
  #         org     = "Eviny Digital AS"
  #         email   = "ghaith.almujalled@eviny.no"
  #         phone   = "+4745402619"
  #     })
  #   }
  #   Spoke02 = {
  #     type         = "spoke"
  #     name         = "storsenter-2"
  #     adm_usr      = "admin"
  #     adm_pass     = ""
  #     platform_str = "FortiGate-VM64-KVM"
  #     sn           = "FGVMEVUPTJZQIMF7"
  #     mgmt_mode    = "fmg"
  #     deviceaction = "add_model"
  #     os_type      = "fos"
  #     os_ver       = "7.0"
  #     description  = "Managed By Terraform"
  #     latitude     = "60.37309"
  #     longitude    = "5.339208"
  #     metadata = (
  #       {
  #         address = "Fjøsangerveien 65"
  #         org     = "Eviny Digital AS"
  #         email   = "ghaith.almujalled@eviny.no"
  #         phone   = "+4745402619"
  #     })
  #   }
  # }
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
  type = string
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