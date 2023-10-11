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