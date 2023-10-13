resource "fortimanager_json_generic_api" "createADOM" {
  json_content = <<JSON
{
    "method": "add",
    "params": [
      {
        "current_adom": 3,
        "data": {
          "create_time": 0,
          "desc": "CREATION OF AN ADOM FROM TERRAFROM",
          "flags": 2056,
          "log_db_retention_hours": 1440,
          "log_disk_quota": 0,
          "log_disk_quota_alert_thres": 90,
          "log_disk_quota_split_ratio": 70,
          "log_file_retention_hours": 8760,
          "mig_mr": 0,
          "mig_os_ver": 0,
          "mode": 1,
          "mr": 2,
          "name": "TEST-FROM-TERRAFORM",
          "os_ver": 7,
          "restricted_prds": 1,
          "state": 1,
          "uuid": "",
          "workspace_mode": 0
        },
        "target start": 1,
        "url": "/dvmdb/adom"
      }
    ]
}
JSON
# depends_on = [
#   fortimanager_exec_workspace_action.lockGNS3,
#   fortimanager_dvm_cmd_update_device.refreshDevice
# ]
}

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