resource "fortimanager_dvm_cmd_add_device" "addDevice" {
  fmgadom  = var.workingADOM
  for_each = var.device
  device {
    name         = each.value.name
    mgmt_mode    = each.value.mgmt_mode
    mr           = each.value.mr
    deviceaction = each.value.deviceaction
    os_type      = each.value.os_type
    os_ver       = each.value.os_ver
    patch        = each.value.patch
    platform_str = each.value.platform_str
    sn           = each.value.sn
    desc         = each.value.description
    #      metafields_map = {
    #        "Address"              = each.value.metadata.address
    #        "Company/Organization" = each.value.metadata.org
    #        "Contact Email"        = each.value.metadata.email
    #        "Contact Phone Number" = each.value.metadata.phone
    #      }
  }
  depends_on = [fortimanager_object_cli_templategroup.Hub-Template]
}