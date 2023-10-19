#resource "fortimanager_object_fmg_variable" "createMetadata" {
#  description = "Metadata"
#  for_each    = toset(var.cli-template-project-variables)
#  name        = each.value
#  scopetype   = "adom"
#  adom        = var.workingADOM
#  value       = ""
#  depends_on = [
#    fortimanager_exec_workspace_action.lockProVars
#  ]
#}

resource "fortimanager_object_fmg_variable" "makeMetadata01" {
  description = "Reagion Variable"
  name = "region"
  scopetype = "adom"
  adom = var.workingADOM
  value       = "East" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "West"
  }
}