#locals {
#  lan_ip_edu = ["10.0.0.1/24", "10.0.1.1/24"]
#  lan_ip_fin = ["10.1.0.1/24", "10.1.1.1/24"]
#}


#locals {
#    projectVars = {
#    lan_ip_edu
#    mpls_wan_ip = 
#    hostname = 
#    profile = 
#    region = 
#    loopback = 
#    mpls_wan_gateway = 
#    inbandwidth = 
#    shaping_profile = 
#    outbandwidth = 
#}
#}
# metadataVar = var.device.vars
#  lan_ip_fin = 
#  mpls_wan_ip = 
#  hostname 
#  profile
#  region
#  loopback
#  mpls_wan_gateway
#  inbandwidth",
#  shaping_profile
#  outbandwidth


locals {
    # get json 
    inventory = jsondecode(file("${path.module}/jsons/inventory.json"))

    # get all devices
    devices = [for device in local.inventory : device]
}

output "devices" {
    value = local.devices
}
