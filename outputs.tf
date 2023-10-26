output "creationTime" {
  value = fortimanager_dvmdb_adom.manageADOM.create_time
}

output "devices" {
  value = [for device in fortimanager_dvm_cmd_add_device.addDevice : var.device]
}
#
#output "DeviceDB" {
#  value = jsondecode(fortimanager_json_generic_api.updateDeviceDB.response)
#}
##
#output Edge-Template {
#  value       = fortimanager_object_cli_templategroup.Edge-Template.member
#}
