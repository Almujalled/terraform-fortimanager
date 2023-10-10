terraform {
  required_providers {
    fortimanager = {
      source = "fortinetdev/fortimanager"
      version = "1.8.0"
    }
  }
}

provider "fortimanager" {
  hostname     = "fm01.verja.no"
  username     = "api_user"
  token        = "n8ru5gqzddqsypogz9g3ax87fg3j4sjz"
  insecure     = "true"
  scopetype    = "adom"
#  adom         = "root"
}

resource "fortimanager_system_global" "workspace" {
  workspace_mode = "normal"
}

resource "fortimanager_exec_workspace_action" "lockGNS3" { # lock root GNS3
  scopetype      = "adom"
  adom           = "GNS3"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}

resource "fortimanager_object_cli_template" "Project" {
  description = "This is a Terraform example to build a project"
  name        = "Project"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("projects/Project.dualreg.nocert.j2")
  type        = "jinja"
  variables   = var.cli-template-project-variables
  depends_on  = [fortimanager_exec_workspace_action.lockGNS3]
}

resource "fortimanager_object_cli_template" "Edge-Underlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "01-Edge-Underlay"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/01-Edge-Underlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Underlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "01-Hub-Underlay"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/01-Hub-Underlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Edge-Overlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "02-Edge-Overlay"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/02-Edge-Overlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Overlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "02-Hub-Overlay"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/02-Hub-Overlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Edge-Routing" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "03-Edge-Routing"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/03-Edge-Routing.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Routing" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "03-Hub-Routing"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/03-Hub-Routing.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-MultiRegion" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "04-Hub-MultiRegion"
  scopetype      = "adom"
  adom           = "GNS3"
  script      = file("cli-templates/04-Hub-MultiRegion.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_templategroup" "Edge-Template" {
  description = "This is a Terraform example to build a CLI template group"
  member      = ["01-Edge-Underlay","02-Edge-Overlay","03-Edge-Routing"]
  name        = "Edge-Template"
  scopetype      = "adom"
  adom           = "GNS3"
  depends_on = [
    fortimanager_object_cli_template.Edge-Overlay,
    fortimanager_object_cli_template.Edge-Routing,
    fortimanager_object_cli_template.Edge-Underlay
  ]
}

resource "fortimanager_object_cli_templategroup" "Hub-Template" {
  description = "This is a Terraform example to build a CLI template group"
  member      = ["01-Hub-Underlay","02-Hub-Overlay","03-Hub-Routing","04-Hub-MultiRegion"]
  name        = "Hub-Template"
  scopetype      = "adom"
  adom           = "GNS3"
  depends_on = [
    fortimanager_object_cli_template.Hub-Overlay,
    fortimanager_object_cli_template.Hub-Routing,
    fortimanager_object_cli_template.Hub-Underlay,
    fortimanager_object_cli_template.Hub-MultiRegion
  ]
}

resource "fortimanager_exec_workspace_action" "lockROOT" { # lock root ADOM
  scopetype      = "adom"
  adom           = "root"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}
#resource "fortimanager_dvm_cmd_add_device" "addDeviceRoot" {
#  fmgadom = "root"
#  force_recreate = uuid()
#  device {
#    mgmt_mode    = "unreg"
#    mr           = "0"
#    name         = "site1-H1-Terraform"
#    #deviceaction = "add_model"
#    os_type      = "unknown"
#    os_ver       = "unknown"
#    patch        = "0"
#    platform_str = "FortiGate-VM64-KVM"
#    sn           = "FGVMEVQQCOCUUE0E"
#  }
#}

#resource "fortimanager_dvm_cmd_update_device" "refreshROOT" {
#  fmgadom = "root"
#  device  = "FortiGate-60F"
#  flags   = ["create_task", "nonblocking"]
#}
#
resource "fortimanager_dvm_cmd_add_device" "authDeviceRoot" {
  fmgadom        = "GNS3"
  flags = [ "create_task" ]
  device {
    deviceaction = "promote_unreg"
    adm_usr      = "admin"
    adm_pass     = ""
  #  ip           = "10.1.10.243"
    name         = "FortiGate-VM64-KVM"
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEV9EYYZK8ID6"
  }
 depends_on     = [
   fortimanager_exec_workspace_action.lockROOT,
#   fortimanager_dvm_cmd_update_device.refreshROOT
   ]
}
### AUTHORIZE A DEVICE VIA API!!! #####
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

resource "fortimanager_exec_workspace_action" "unlockROOT" { # save change and unlock root ADOM
  scopetype      = "adom"
  adom           = "root"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [
#    fortimanager_json_generic_api.authDevice,
    fortimanager_dvm_cmd_add_device.authDeviceRoot
    ]
}

resource "fortimanager_exec_workspace_action" "unlockGNS3" { # save change and unlock root GNS3
  scopetype      = "adom"
  adom           = "GNS3"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [
    fortimanager_object_cli_templategroup.Hub-Template,
    fortimanager_object_cli_templategroup.Edge-Template,
#    fortimanager_json_generic_api.authDevice
    fortimanager_dvm_cmd_add_device.authDeviceRoot
    ]
}