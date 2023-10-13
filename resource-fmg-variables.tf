resource "fortimanager_object_fmg_variable" "createMetadata" {
  description = ""
  for_each = [ 
    "inbandwidth",
    "lan_ip_edu",
    "lan_ip_fin",
    "mpls_wan_ip",
    "outbandwidth",
    "shaping_profile"
    ]
  name = each.value
  scopetype   = "adom"
  adom        = var.workingADOM
  depends_on  = [
    fortimanager_dvmdb_adom.createADOM,
    fortimanager_exec_workspace_action.lockWorkingADOM
    ]
}