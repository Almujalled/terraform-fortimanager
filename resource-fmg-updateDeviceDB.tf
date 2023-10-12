resource "fortimanager_dvm_cmd_update_device" "refreshDevice" {
  fmgadom = "GNS3"
  device  = "NameChangedFromTerra"
  flags   = ["create_task", "nonblocking"]
  depends_on = [
    fortimanager_exec_workspace_action.lockGNS3
  ]
}

resource "fortimanager_json_generic_api" "updateDeviceDB" {
  json_content = <<JSON
{
  "method": "update",
  "params": [
    {
      "data": {
        "adm_pass": "",
        "adm_usr": "admin",
        "desc": "This is updated from Terrafrom using an API!",
        "latitude": 60.37309404359674,
        "longitude": 5.33920881412722,
        "meta fields": {
          "Address": "Fjøsangerveien 65",
          "Company/Organization": "Eviny Digital AS",
          "Contact Email": "ghaith.almujalled@verja.no",
          "Contact Phone Number": "+4745402619"
        },
        "name": "UpdatedFromTerra"
      },
      "url": "/dvmdb/adom/GNS3/device/UpdatedFromTerra"
    }
  ]
}
JSON
  depends_on = [
    fortimanager_exec_workspace_action.lockGNS3,
    fortimanager_dvm_cmd_update_device.refreshDevice
  ]
}

## Ref: Reverse engineer a GUI request via CLI debug:
#{
#  "client": "gui json:11231",
#  "id": "5b8d7674-f3bc-4e85-94fc-e4fd1e3d825f",
#  "keep_session_idle": 1,
#  "method": "update",
#  "params": [
#    {
#      "data": {
#        "adm_pass": "******",
#        "adm_usr": "admin",
#        "desc": "",
#        "ip": "10.1.10.245",
#        "latitude": 0,
#        "longitude": 0,
#        "meta fields": {
#          "Address": "",
#          "Company\\/Organization": "",
#          "Contact Email": "",
#          "Contact Phone Number": ""
#        },
#        "name": "TEST-CHANGE-GUI"
#      },
#      "target start": 1,
#      "url": "\\/dvmdb\\/adom\\/GNS3\\/device\\/FGVMEVKZQU851F62"
#    }
#  ],
#  "session": 21474
#} 