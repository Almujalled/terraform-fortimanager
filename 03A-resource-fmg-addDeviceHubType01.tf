#resource "fortimanager_dvm_cmd_add_device" "addHubType01" {
#  fmgadom  = var.workingADOM
#  for_each = toset([var.device.name])
#  device {
#    mgmt_mode    = var.HubType01.mgmt_mode
#    mr           = "0"
#    name         = each.key
#    deviceaction = var.HubType01.deviceaction
#    os_type      = var.HubType01.os_type
#    os_ver       = var.HubType01.os_ver
#    patch        = "0"
#    platform_str = var.HubType01.platform_str
#    sn           = var.HubType01.sn
#  }
#  depends_on = [fortimanager_exec_workspace_action.lockADOM]
#}