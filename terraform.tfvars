resource_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "ghaith.almujalled@eviny.no"
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

workingADOM = "Tilbords AS"

device01Info = {
  name         = "Oslo"
  adm_usr      = "admin"
  adm_pass     = ""
  platform_str = "FortiGate-VM64-KVM"
  sn           = "FGVMEVDNB1HFA86B"
  mgmt_mode    = "fmg"
  deviceaction = "add_model"
  os_type      = "fos"
  os_ver       = "7.0"
}

device02Info = {
  name         = "storsenter-1"
  adm_usr      = "admin"
  adm_pass     = ""
  platform_str = "FortiGate-VM64-KVM"
  sn           = "FGVMEVUPTJZQIMF7"
  mgmt_mode    = "fmg"
  deviceaction = "add_model"
  os_type      = "fos"
  os_ver       = "7.0"
}

device03Info = {
  name         = "storsenter-2"
  adm_usr      = "admin"
  adm_pass     = ""
  platform_str = "FortiGate-VM64-KVM"
  sn           = "FGVMEVYBU0WTJJC0"
  mgmt_mode    = "fmg"
  deviceaction = "add_model"
  os_type      = "fos"
  os_ver       = "7.0"
}
#createADOM   = true
#createDevice = true

methodAPI = "add"