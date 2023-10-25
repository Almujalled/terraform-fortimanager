#resource "fortimanager_json_generic_api" "updateHUB01DB" {
#  json_content = <<JSON
#{
#  "method": "update",
#  "params": [
#    {
#      "data": {
#        "adm_pass": "${var.device01Info.adm_pass}",
#        "adm_usr": "${var.device01Info.adm_usr}",
#        "desc": "It seems to work!",
#        "latitude": 60.37309404359674,
#        "longitude": 5.33920881412722,
#        "meta fields": {
#          "Address": "Fjøsangerveien 65",
#          "Company/Organization": "Eviny Digital AS",
#          "Contact Email": "ghaith.almujalled@eviny.no",
#          "Contact Phone Number": "+4745402619"
#        },
#        "name": "${var.device01Info.name}"
#      },
#      "url": "/dvmdb/adom/${var.workingADOM}/device/${var.device01Info.name}"
#    }
#  ]
#}
#JSON
#  depends_on = [
#    fortimanager_dvm_cmd_add_device.addHUB01
#  ]
#}