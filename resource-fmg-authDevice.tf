## AUTHORIZE A DEVICE VIA API!!! ######
resource "fortimanager_json_generic_api" "authDevice" {
  json_content = <<JSON
{
  "method": "exec",
  "params": [
    {
      "data": {
        "adom": "${var.workingADOM}",
        "device": {
          "device action": "promote_unreg",
          "name": "${var.deviceInfo.platform_str}",
          "platform_str": "${var.deviceInfo.platform_str}",
          "sn": "${var.deviceInfo.sn}",
          "adm_usr": "${var.deviceInfo.adm_usr}",
          "adm_pass": "${var.deviceInfo.adm_pass}"
        },
        "flags": [
          "create_task"
        ]
      },
      "url": "/dvm/cmd/add/device"
    }
  ]
}
JSON
}

#output authDevice {
#  value       = jsondecode(fortimanager_json_generic_api.authDevice.response)
#}



#resource "fortimanager_dvm_cmd_add_device" "authDevice" {
#  count   = var.createDevice ? 1 : 0
#  fmgadom = var.workingADOM
#  flags   = ["create_task"]
#  device {
#    deviceaction = "promote_unreg"
#    adm_usr      = var.deviceInfo.adm_usr
#    adm_pass     = var.deviceInfo.adm_pass
#    name         = var.deviceInfo.name
#    platform_str = var.deviceInfo.platform_str # Needed for VM type FGTs! 
#    sn           = var.deviceInfo.sn
#  }
#  depends_on = [
#    fortimanager_exec_workspace_action.lockDevice
#  ]
#}