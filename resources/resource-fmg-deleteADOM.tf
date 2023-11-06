#resource "fortimanager_json_generic_api" "deleteADOM" {
#  json_content = <<JSON
#{
#  "method": "delete",
#  "params": [
#    {
#      "url": "/dvmdb/adom/${var.workingADOM}"
#    }
#  ]
#}
#JSON
# depends_on = [
#   fortimanager_exec_workspace_action.lockADOM
# ]
#}