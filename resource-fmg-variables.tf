resource "fortimanager_object_fmg_variable" "createMetadata" {
  description = "Metadata"
  for_each    = toset(var.cli-template-project-variables)
  name        = each.value
  scopetype   = "adom"
  adom        = var.workingADOM
  lifecycle {
    ignore_changes = all
  }
  depends_on = [
    fortimanager_json_generic_api.createADOM,
    fortimanager_exec_workspace_action.lockADOM
  ]
}