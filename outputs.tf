output "getADOM" {
  value = jsondecode(fortimanager_json_generic_api.getADOM.response)
}
#
output "DeviceDB" {
  value = jsondecode(fortimanager_json_generic_api.updateDeviceDB.response)
}
#
output Edge-Template {
  value       = fortimanager_object_cli_templategroup.Edge-Template.member
}
