resource "fortimanager_dvmdb_adom" "createADOM" {
  create_time = 0
  flags = [
    "no_vpn_console",
  ]
  id                         = ""
  log_db_retention_hours     = 1440
  log_disk_quota             = 0
  log_disk_quota_alert_thres = 90
  log_disk_quota_split_ratio = 70
  log_file_retention_hours   = 8760
  mig_mr                     = 0
  mig_os_ver                 = "0.0"
  mode                       = "gms"
  mr                         = 2
  name                       = "createdbyterraform"
  os_ver                     = "7.0"
  restricted_prds = [
    "fos",
  ]
  state          = 1
  tz             = 0
  uuid           = ""
  workspace_mode = 1
  depends_on = [
  fortimanager_exec_workspace_action.lockROOT
  ]
}

#resource "fortimanager_json_generic_api" "createADOM" {
#  json_content = <<JSON
#{
#  "method": "add",
#  "params": [
#    {
#      "data": [
#        {
#          "create_time": 0,
#          "desc": "CREATING FROM TERRAFORM",
#          "flags": [
#            "{no_vpn_console}"
#          ],
#          "log_db_retention_hours": 1440,
#          "log_disk_quota": 0,
#          "log_disk_quota_alert_thres": 90,
#          "log_disk_quota_split_ratio": 70,
#          "log_file_retention_hours": 8760,
#          "mig_os_ver": "7.0",
#          "mode": "gms",
#          "name": "createdByTerrafrom",
#          "os_ver": "7.0",
#          "restricted_prds": "fos",
#          "state": 1,
#          "uuid": "",
#          "workspace_mode": 0
#        }
#      ],
#      "url": "/dvmdb/adom"
#    }
#  ]
#}
#JSON
# depends_on = [
#   fortimanager_exec_workspace_action.lockGNS3,
#   fortimanager_dvm_cmd_update_device.refreshDevice
# ]
#}

## Reverse Engineering the creation of an ADOM:
#{
#    "client": "gui webworker:20523",
#    "id": 1,
#    "method": "add",
#    "params": [
#      {
#        "current_adom": 3,
#        "data": {
#          "create_time": 0,
#          "desc": "REVERSE ENGINEER THE CREATION OF AN ADOM",
#          "flags": 2056,
#          "log_db_retention_hours": 1440,
#          "log_disk_quota": 0,
#          "log_disk_quota_alert_thres": 90,
#          "log_disk_quota_split_ratio": 70,
#          "log_file_retention_hours": 8760,
#          "mig_mr": 0,
#          "mig_os_ver": 0,
#          "mode": 1,
#          "mr": 2,
#          "name": "TEST-FROM-GUI",
#          "os_ver": 7,
#          "restricted_prds": 1,
#          "state": 1,
#          "uuid": "",
#          "workspace_mode": 0
#        },
#        "target start": 1,
#        "url": "adom"
#      }
#    ],
#    "root": "dvmdb",
#    "session": 43125
#  }