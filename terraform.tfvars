resource_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "ghaith.almujalled@eviny.no"
}

device = {
  Hub01 = {
    type = "hub"
    name         = "Oslo"
    adm_usr  = "admin"
    adm_pass = ""
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEVDNB1HFA86B"
    mgmt_mode    = "fmg"
    deviceaction = "add_model"
    os_type      = "fos"
    os_ver       = "7.0"
    description  = "Managed By Terraform"
    latitude     = "60.37309"
    longitude    = "5.339208"
    metadata = (
      {
        address = "Fjøsangerveien 65"
        org     = "Eviny Digital AS"
        email   = "ghaith.almujalled@eviny.no"
        phone   = "+4745402619"
    })
  }
     Spoke01 = {
     type         = "spoke"
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
     metadata = (
       {
         address = "Fjøsangerveien 65"
         org     = "Eviny Digital AS"
         email   = "ghaith.almujalled@eviny.no"
         phone   = "+4745402619"
     })
   }
   Spoke02 = {
     type         = "spoke"
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
     metadata = (
       {
         address = "Fjøsangerveien 65"
         org     = "Eviny Digital AS"
         email   = "ghaith.almujalled@eviny.no"
         phone   = "+4745402619"
     })
   }
 }

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

workingADOM = "Tilbords_AS"

methodAPI = "add"