#resource "fortimanager_dvm_cmd_add_device" "addSpoke01" {
#  fmgadom = var.workingADOM
#  device {
#    mgmt_mode    = var.Spoke01.mgmt_mode
#    mr           = "0"
#    name         = var.Spoke01.name
#    deviceaction = var.Spoke01.deviceaction
#    os_type      = var.Spoke01.os_type
#    os_ver       = var.Spoke01.os_ver
#    patch        = "0"
#    platform_str = var.Spoke01.platform_str
#    sn           = var.Spoke01.sn
#  }
#  depends_on = [fortimanager_dvm_cmd_add_device.addHUB01]
#}