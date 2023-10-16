resource "fortimanager_object_fmg_variable" "createMetadata" {
  
  description = "Global Metadata"
  for_each    = toset( var.cli-template-project-variables )
  name      = each.key
  scopetype = "adom"
  adom      = set var.workingADOM
  depends_on = [
    fortimanager_exec_workspace_action.lockWorkingADOM
  ]
}