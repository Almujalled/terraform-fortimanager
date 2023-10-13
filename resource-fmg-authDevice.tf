resource "fortimanager_dvm_cmd_add_device" "authDevice" {
  fmgadom = "GNS3"
  flags   = ["create_task"]
  device {
    deviceaction = "promote_unreg"
    adm_usr      = "admin"
    adm_pass     = ""
    name         = "FortiGate-VM64-KVM"
    platform_str = "FortiGate-VM64-KVM" # Needed for VM type FGTs! 
    sn           = "FGVMEVCORH8NE2AB"
  }
  depends_on = [
    fortimanager_exec_workspace_action.lockROOT
  ]
}




### AUTHORIZE A DEVICE VIA API!!! ######
#resource "fortimanager_json_generic_api" "authDevice" {
#  json_content = <<JSON
#{
#  "method": "exec",
#  "params": [
#    {
#      "data": {
#        "adom": "GNS3",
#        "device": {
#          "adm_pass": "",
#          "adm_usr": "admin",
#          "device action": "promote_unreg",
#          "name": "FortiGate-60F"
#        },
#        "flags": [
#          "create_task"
#        ]
#      },
#      "url": "/dvm/cmd/add/device"
#    }
#  ]
#}
#JSON
#}

#output authDevice {
#  value       = jsondecode(fortimanager_json_generic_api.authDevice.response)
#}
