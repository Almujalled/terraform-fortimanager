#resource "fortimanager_dvm_cmd_add_device" "addDeviceRoot" {
#  fmgadom = "root"
#  force_recreate = uuid()
#  device {
#    mgmt_mode    = "unreg"
#    mr           = "0"
#    name         = "site1-H1-Terraform"
#    #deviceaction = "add_model"
#    os_type      = "unknown"
#    os_ver       = "unknown"
#    patch        = "0"
#    platform_str = "FortiGate-VM64-KVM"
#    sn           = "FGVMEVQQCOCUUE0E"
#  }
#}

#resource "fortimanager_dvm_cmd_update_device" "refreshROOT" {
#  fmgadom = "root"
#  device  = "FortiGate-60F"
#  flags   = ["create_task", "nonblocking"]
#}