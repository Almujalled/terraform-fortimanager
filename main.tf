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

resource "fortimanager_object_cli_template" "project" {
  description = "This is a Terraform example to build a project"
  name        = "Project"
  script      = file("projects/Project.dualreg.nocert.j2")
  type        = "jinja"
  variables   = var.cli-template-project-variables
  depends_on  = [fortimanager_exec_workspace_action.lockres]
}

resource "fortimanager_object_cli_template" "Edge-Underlay" {
  description = "This is a Terraform example to build a CLI Template"
  name        = "01-Edge-Underlay.j2"
  script      = file("cli-templates/01-Edge-Underlay.j2")
  type        = "jinja"
  depends_on  = [fortimanager_object_cli_template.project]
}

resource "fortimanager_exec_workspace_action" "unlockres" { # save change and unlock root ADOM
  scopetype      = "inherit"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [fortimanager_object_cli_template.Edge-Underlay]
}