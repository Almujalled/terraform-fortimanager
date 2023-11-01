resource_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "ghaith.almujalled@eviny.no"
}

workingADOM = "Tilbords_AS"
device = {
  hub = {
    type         = "hub"
    count        = 1
    name         = "Oslo"
    adm_usr      = "admin"
    adm_pass     = ""
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEVDNB1HFA86B"
    mgmt_mode    = "fmg"
    deviceaction = "add_model"
    os_type      = "fos"
    os_ver       = "7.0"
    description  = "Managed By Terraform"
    latitude     = "60.37309"
    longitude    = "5.339208"
    ip           = "192.16.1.1"
    metadata = (
      {
        address = "Fjøsangerveien 65"
        org     = "Eviny Digital AS"
        email   = "ghaith.almujalled@eviny.no"
        phone   = "+4745402619"
    })
  }
  spoke01 = {
    type         = "spoke"
    count        = 1
    name         = "storsenter-1"
    adm_usr      = "admin"
    adm_pass     = ""
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEVYBU0WTJJC0"
    mgmt_mode    = "fmg"
    deviceaction = "add_model"
    os_type      = "fos"
    os_ver       = "7.0"
    description  = "Managed By Terraform"
    latitude     = "60.37309"
    longitude    = "5.339208"
    ip           = "172.16.2.1"
    metadata = (
      {
        address = "Fjøsangerveien 65"
        org     = "Eviny Digital AS"
        email   = "ghaith.almujalled@eviny.no"
        phone   = "+4745402619"
    })
  }
  spoke02 = {
    type         = "spoke"
    count        = 1
    name         = "storsenter-2"
    adm_usr      = "admin"
    adm_pass     = ""
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEVUPTJZQIMF7"
    mgmt_mode    = "fmg"
    deviceaction = "add_model"
    os_type      = "fos"
    os_ver       = "7.0"
    description  = "Managed By Terraform"
    latitude     = "60.37309"
    longitude    = "5.339208"
    ip           = "172.16.3.1"
    metadata = (
      {
        address = "Fjøsangerveien 65"
        org     = "Eviny Digital AS"
        email   = "ghaith.almujalled@verja.no"
        phone   = "+4745402619"
    })
  }
}


#adomVARS = {
#  lan_ip_edu({
#    name = lan_ip_edu
#    description = "LAN IP EDU"
#    scopetype = adom
#    adom      = string
#    default_value     = "10.0.0.1/24"
#    dynamic_mapping = object({
#      _scope = object({
#        name = string
#        vdom = string
#      })
#    value = string
#    })
#  }))
#}

cli-template-project-variables = [
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
