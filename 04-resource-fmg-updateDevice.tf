resource "fortimanager_json_generic_api" "updateDevice" {
  for_each     = var.device
  json_content = <<JSON
{
  "method": "update",
  "params": [
    {
      "data": {
        "adm_pass": "${each.value.adm_pass}",
        "adm_usr": "${each.value.adm_usr}",
        "desc": "${each.value.description}",
        "latitude": "${each.value.latitude}",
        "longitude": "${each.value.longitude}",
        "ip": "${each.value.ip}",
        "meta fields": {
          "Address": "${each.value.metadata.address}",
          "Company/Organization": "${each.value.metadata.org}",
          "Contact Email": "${each.value.metadata.email}",
          "Contact Phone Number": "${each.value.metadata.phone}"
        },
        "name": "${each.value.name}"
      },
      "url": "/dvmdb/adom/${var.workingADOM}/device/${each.value.name}"
    }
  ]
}
JSON
  depends_on = [
    fortimanager_dvm_cmd_add_device.addDevice
  ]
}