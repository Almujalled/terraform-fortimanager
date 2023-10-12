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
        "name": "NewNameFromTerra"
      },
      "url": "/dvmdb/adom/GNS3/device/NameChangedFromTerra"
    }
  ]
}
JSON
  depends_on = [
    fortimanager_exec_workspace_action.lockGNS3,
    fortimanager_dvm_cmd_update_device.refreshDevice
  ]
}