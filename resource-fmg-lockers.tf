#resource "fortimanager_system_global" "workspace" {
#  workspace_mode = "normal"
#}
resource "fortimanager_exec_workspace_action" "lockADOM" {
  #count     = var.createADOM ? 0 : 1
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}

resource "fortimanager_exec_workspace_action" "unlockADOM" {
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on = [
    fortimanager_object_fmg_variable.createMetadata,
    fortimanager_object_cli_template.Project,
    fortimanager_object_cli_templategroup.Edge-Template,
    fortimanager_object_cli_templategroup.Hub-Template,
    fortimanager_json_generic_api.updateDeviceDB
  ]
}
#resource "fortimanager_exec_workspace_action" "lockDevice" {
#  count = var.createDevice ? 0 : 1
#  scopetype = "adom"
#  adom      = var.workingADOM
#  action    = "lockbegin"
#  target    = "dev"
#  param     = var.deviceInfo.name
#  force_recreate = uuid()
#  comment = ""
#  depends_on = [ fortimanager_dvm_cmd_update_device.refreshDevice ]
#}
#
#resource "fortimanager_exec_workspace_action" "unlockDevice" {
#  scopetype = "adom"
#  adom      = var.workingADOM
#  action    = "lockend"
#  target    = "dev"
#  param     = var.deviceInfo.name
#  force_recreate = uuid()
#  comment = ""
#  depends_on = [
#    fortimanager_json_generic_api.updateDeviceDB
#  ]
#}
#resource "fortimanager_exec_workspace_action" "lockPackage" {
#  scopetype      = "adom"
#  adom           = var.workingADOM
#  action         = "lockbegin"
#  target         = "pkg"
#  param          = var.pkg
#  #force_recreate = uuid()
#  comment        = ""
#}
#resource "fortimanager_exec_workspace_action" "unlockPackage" {
#  scopetype      = "adom"
#  adom           = var.workingADOM
#  action         = "lockend"
#  target         = "pkg"
#  param          = var.pkg
#  #force_recreate = uuid()
#  comment        = ""
#  #depends_on = [ 
#  # ]
#}

##
#target - Lock an entire ADOM: keep the argument empty, a device: dev, a specific object : obj or a specific package: pkg.
#param - the target param will be locked or unlocked.