resource "fortimanager_dvm_cmd_add_device" "addDevice01" {
  fmgadom = var.workingADOM
  device {
    mgmt_mode    = var.device01Info.mgmt_mode
    mr           = "0"
    name         = var.device01Info.name
    deviceaction = var.device01Info.deviceaction
    os_type      = var.device01Info.os_type
    os_ver       = var.device01Info.os_ver
    patch        = "0"
    platform_str = var.device01Info.platform_str
    sn           = var.device01Info.sn
  }
  depends_on = [fortimanager_exec_workspace_action.lockADOM]
}

resource "fortimanager_dvm_cmd_add_device" "addDevice02" {
  fmgadom = var.workingADOM
  device {
    mgmt_mode    = var.device02Info.mgmt_mode
    mr           = "0"
    name         = var.device02Info.name
    deviceaction = var.device02Info.deviceaction
    os_type      = var.device02Info.os_type
    os_ver       = var.device02Info.os_ver
    patch        = "0"
    platform_str = var.device02Info.platform_str
    sn           = var.device02Info.sn
  }
  depends_on = [fortimanager_dvm_cmd_add_device.addDevice01]
}

resource "fortimanager_dvm_cmd_add_device" "addDevice03" {
  fmgadom = var.workingADOM
  device {
    mgmt_mode    = var.device03Info.mgmt_mode
    mr           = "0"
    name         = var.device03Info.name
    deviceaction = var.device03Info.deviceaction
    os_type      = var.device03Info.os_type
    os_ver       = var.device03Info.os_ver
    patch        = "0"
    platform_str = var.device03Info.platform_str
    sn           = var.device03Info.sn
  }
  depends_on = [fortimanager_dvm_cmd_add_device.addDevice02]
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