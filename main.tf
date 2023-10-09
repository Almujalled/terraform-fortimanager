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
  adom         = "GNS3"
}

resource "fortimanager_system_global" "workspace" {
  workspace_mode = "normal"
}

resource "fortimanager_exec_workspace_action" "lockres" { # lock root ADOM
  scopetype      = "inherit"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}

resource "fortimanager_object_cli_template" "Project" {
  description = "This is a Terraform example to build a project"
  name        = "Project"
  script      = file("projects/Project.dualreg.nocert.j2")
  type        = "jinja"
  variables   = var.cli-template-project-variables
  depends_on  = [fortimanager_exec_workspace_action.lockres]
}

resource "fortimanager_object_cli_template" "Edge-Underlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "01-Edge-Underlay"
  script      = file("cli-templates/01-Edge-Underlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Underlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "01-Hub-Underlay"
  script      = file("cli-templates/01-Hub-Underlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Edge-Overlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "02-Edge-Overlay"
  script      = file("cli-templates/02-Edge-Overlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Overlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "02-Hub-Overlay"
  script      = file("cli-templates/02-Hub-Overlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Edge-Routing" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "03-Edge-Routing"
  script      = file("cli-templates/03-Edge-Routing.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-Routing" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "03-Hub-Routing"
  script      = file("cli-templates/03-Hub-Routing.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_template" "Hub-MultiRegion" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "04-Hub-MultiRegion"
  script      = file("cli-templates/04-Hub-MultiRegion.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.Project]
}

resource "fortimanager_object_cli_templategroup" "Edge-Template" {
  description = "This is a Terraform example to build a CLI template group"
  member      = ["01-Edge-Underlay","02-Edge-Overlay","03-Edge-Routing"]
  name        = "Edge-Template"
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
  depends_on = [
    fortimanager_object_cli_template.Hub-Overlay,
    fortimanager_object_cli_template.Hub-Routing,
    fortimanager_object_cli_template.Hub-Underlay,
    fortimanager_object_cli_template.Hub-MultiRegion
  ]
}

#resource "fortimanager_dvm_cmd_add_device" "addDevice" {
#  fmgadom = "root"
#  device {
#    mgmt_mode = "fmg"
#    name      = "site1-H1"
#    deviceaction = "promote_unreg"
#    os_type = "fos" 
#    platform_str = "FortiGate-VM64-KVM"
#    sn = "FGVMEVQQCOCUUE0E"
#  }
#}

resource "fortimanager_exec_workspace_action" "unlockres" { # save change and unlock root ADOM
  scopetype      = "inherit"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [
    fortimanager_object_cli_templategroup.Hub-Template,
    fortimanager_object_cli_templategroup.Edge-Template,
  #  fortimanager_dvm_cmd_add_device.addDevice
    ]
}