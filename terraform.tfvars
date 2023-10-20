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

deviceInfo = {
  name         = "authByTerraform"
  adm_usr      = "admin"
  adm_pass     = ""
  platform_str = "FortiGate-VM64-KVM"
  sn           = "FGVMEVDNB1HFA86B"
}

workingADOM = "createdByTerraform"

createADOM   = true
createDevice = true