

#resource "fortimanager_dvmdb_adom" "manageADOM" {
#  create_time                = 0
#  flags                      = []
#  lock_override              = 0
#  log_db_retention_hours     = 1440
#  log_disk_quota             = 0
#  log_disk_quota_alert_thres = 90
#  log_disk_quota_split_ratio = 70
#  log_file_retention_hours   = 8760
#  mig_mr                     = 2
#  mig_os_ver                 = "7.0"
#  mode                       = "gms"
#  mr                         = 2
#  name                       = "${var.workingADOM}"
#  os_ver                     = "7.0"
#  restricted_prds = [
#    "fos",
#  ]
#  state          = 1
#  tz             = 0
#  workspace_mode = 1
#    lifecycle {
#        ignore_changes = [create_time]
#  }
#  depends_on = [ fortimanager_exec_workspace_action.lockBegin ]
#}


#resource "fortimanager_json_generic_api" "createADOM" {
#  json_content = <<JSON
#{
#  "method": "add",
#  "params": [
#    {
#      "data": [
#        {
#          "create_time": 0,
#          "desc": "Created By Terraform",
#          "flags": [],
#          "log_db_retention_hours": 1440,
#          "log_disk_quota": 0,
#          "log_disk_quota_alert_thres": 90,
#          "log_disk_quota_split_ratio": 70,
#          "log_file_retention_hours": 8760,
#          "mig_mr": 0,
#          "mig_os_ver": 0,
#          "mode": "gms",
#          "mr": 2,
#          "name": "${var.workingADOM}",
#          "restricted_prds": "fos",
#          "state": 1,
#          "uuid": "",
#          "workspace_mode": 1
#        }
#      ],
#      "url": "/dvmdb/adom"
#    }
#  ]
#}
#JSON
#}

resource "fortimanager_json_generic_api" "createADOM" {
  json_content = <<JSON
{
  "method": "${var.operationADOM}",
  "params": [
    {
      "data": [
        {
          "name": "${var.workingADOM}"
        }
      ],
      "url": "/dvmdb/adom"
    }
  ]
}
JSON
}