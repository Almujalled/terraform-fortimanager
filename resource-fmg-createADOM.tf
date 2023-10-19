resource "fortimanager_json_generic_api" "createADOM" {
  json_content = <<JSON
{
  "method": "add",
  "params": [
    {
      "data": [
        {
          "create_time": 0,
          "desc": "Created By Terraform",
          "flags": [
            "no_vpn_console"
          ],
          "log_db_retention_hours": 1440,
          "log_disk_quota": 0,
          "log_disk_quota_alert_thres": 90,
          "log_disk_quota_split_ratio": 70,
          "log_file_retention_hours": 8760,
          "mig_mr": 0,
          "mig_os_ver": 0,
          "mode": "gms",
          "mr": 2,
          "name": "${var.workingADOM}",
          "os_ver": "7.0",
          "restricted_prds": "fos",
          "state": 1,
          "uuid": "",
          "workspace_mode": 1
        }
      ],
      "url": "/dvmdb/adom"
    }
  ]
}
JSON
  lifecycle {
    prevent_destroy       = false
    create_before_destroy = true
  }
}