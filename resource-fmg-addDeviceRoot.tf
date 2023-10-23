#resource "fortimanager_dvm_cmd_add_device" "addDeviceADOM" {
#  fmgadom = var.workingADOM
#  device {
#    mgmt_mode    = "unreg"
#    mr           = "0"
#    name         = "site1-H1-Terraform"
#    deviceaction = "add_model"
#    os_type      = ""
#    os_ver       = ""
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

#resource "fortimanager_dvm_cmd_add_device" "addDeviceADOM" {
#    fmgadom               = var.workingADOM
#    device {
#        metafields_map = {}
#        name           = "site1-H1"
#        sn             = "FGVMEVQQCOCUUE0E"
#    }
#}

#resource "fortimanager_dvm_cmd_update_device" "updateDeviceADOM" {
#    depends_on = [ fortimanager_exec_workspace_action.lockBegin ]
#}