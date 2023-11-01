resource "fortimanager_dvm_cmd_add_device" "updateDevice" {
  fmgadom  = var.workingADOM
  for_each = var.device
  device {
    name         = each.value.name
    ip           = each.value.ip
    mgmt_mode    = each.value.mgmt_mode
    mr           = "0"
    deviceaction = each.value.deviceaction
    os_type      = each.value.os_type
    os_ver       = each.value.os_ver
    patch        = "0"
    desc         = each.value.description
       metafields_map = {
         "Address"              = each.value.metadata.address
         "Company/Organization" = each.value.metadata.org
         "Contact Email"        = each.value.metadata.email
         "Contact Phone Number" = each.value.metadata.phone
       }
  }
  depends_on = [fortimanager_dvm_cmd_add_device.addDevice]
}