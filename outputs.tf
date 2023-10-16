output "getADOM" {
  value = jsondecode(fortimanager_json_generic_api.getADOM.response)
}
#
output "DeviceDB" {
  value = jsondecode(fortimanager_json_generic_api.updateDeviceDB.response)
}
#
#output test3 {
#  value       = jsondecode(fortimanager_json_generic_api.test3.response)
#}
