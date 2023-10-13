resource "fortimanager_object_fmg_variable" "createMetadata" {
  description = ""
  name        = "inbandwidth"
  scopetype   = "adom"
  adom        = var.workingADOM
  depends_on  = [
    fortimanager_dvmdb_adom.createADOM,
    fortimanager_exec_workspace_action.lockWorkingADOM
    ]
}