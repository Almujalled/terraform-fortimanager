resource "fortimanager_object_fmg_variable" "createMetadata" {
  description = ""
  for_each = var.cli-template-project-variables
  name = each.value
  scopetype   = "adom"
  adom        = var.workingADOM
  depends_on  = [
    fortimanager_dvmdb_adom.createADOM,
    fortimanager_exec_workspace_action.lockWorkingADOM
    ]
}