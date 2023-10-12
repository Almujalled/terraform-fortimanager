resource "fortimanager_dvm_cmd_update_device" "refreshDevice" {
  fmgadom = "GNS3"
  device  = "NameChangedFromTerra"
  flags   = ["create_task", "nonblocking"]
  depends_on = [
    fortimanager_exec_workspace_action.lockGNS3
  ]
}

resource "fortimanager_json_generic_api" "changeName" {
  json_content = <<JSON
{
  "method": "update",
  "params": [
    {
      "data": {
        "adm_pass": "",
        "adm_usr": "admin",
        "desc": "This is updated from Terrafrom using an API!",
        "latitude": 0,
        "longitude": 0,
        "meta fields": {
          "Address": "",
          "Company/Organization": "Eviny Digital AS",
          "Contact Email": "ghaith.almujalled@eviny.no",
          "Contact Phone Number": "+4745402619"
        "name": "UpdateDeviceFromTerra"
      },
      "url": "/dvmdb/adom/GNS3/device/NewNameFromTerra"
    }
  ]
}
JSON
  depends_on = [
    fortimanager_exec_workspace_action.lockGNS3,
    fortimanager_dvm_cmd_update_device.refreshDevice
  ]
}