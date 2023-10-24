resource "fortimanager_dvm_cmd_add_device" "addDevice" {
  fmgadom = var.workingADOM
  device {
    mgmt_mode    = var.deviceInfo.mgmt_mode
    mr           = "0"
    name         = var.deviceInfo.name
    deviceaction = var.deviceInfo.deviceaction
    os_type      = var.deviceInfo.os_type
    os_ver       = var.deviceInfo.os_ver
    patch        = "0"
    platform_str = var.deviceInfo.platform_str
    sn           = var.deviceInfo.sn
  }
  depends_on = [fortimanager_exec_workspace_action.lockADOM]
}

#resource "fortimanager_dvm_cmd_add_device" "addDeviceROOT" {
#  fmgadom = var.workingADOM
#  device {
#    mgmt_mode    = var.deviceInfo.mgmt_mode
#    mr           = "0"
#    name         = var.deviceInfo.name
#    deviceaction = var.deviceInfo.deviceaction
#    os_type      = var.deviceInfo.os_type
#    os_ver       = var.deviceInfo.os_ver
#    patch        = "0"
#    platform_str = var.deviceInfo.platform_str
#    sn           = var.deviceInfo.sn
#  }
#  depends_on = [ fortimanager_exec_workspace_action.lockADOM ]
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