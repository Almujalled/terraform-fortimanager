
resource "fortimanager_exec_workspace_action" "lockADOM" {
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [fortimanager_dvmdb_adom.manageADOM]
}


#resource "fortimanager_exec_workspace_action" "lockDevice" {
#  count          = var.createDevice ? 0 : 1
#  scopetype      = "adom"
#  adom           = var.workingADOM
#  action         = "lockbegin"
#  target         = "dev"
#  param          = var.deviceInfo.name
#  force_recreate = uuid()
#  comment        = ""
#  depends_on = [ fortimanager_dvm_cmd_update_device.refreshDevice]
#}
##

#resource "fortimanager_exec_workspace_action" "lockPackage" {
#  scopetype      = "adom"
#  adom           = var.workingADOM
#  action         = "lockbegin"
#  target         = "pkg"
#  param          = var.pkg
#  force_recreate = uuid()
#  comment        = ""
#}

#resource "fortimanager_exec_workspace_action" "lockProVars" {
#  scopetype      = "adom"
#  adom           = var.workingADOM
#  target         = "obj"
#  action         = "lockbegin"
#  for_each       = toset(var.cli-template-project-variables)
#  param          = each.value
#  force_recreate = uuid()
#  comment        = ""
#  depends_on = [ fortimanager_object_fmg_variable.createMetadata ]
#}



##
#target - Lock an entire ADOM: keep the argument empty, a device: dev, a specific object : obj or a specific package: pkg.
#param - the target param will be locked or unlocked.



#resource "fortimanager_exec_workspace_action" "lockBegin" {
#    scopetype = "adom"
#    adom = var.workingADOM
#    target = ""
#    action = "lockbegin"
#    force_recreate = uuid()
#    depends_on = [ ]
#}
#
#resource "fortimanager_exec_workspace_action" "lockEnd" {
#    scopetype = "adom"
#    adom = var.workingADOM
#    target = ""
#    action = "lockend"
#    force_recreate = uuid()
#    depends_on = [ 
#        fortimanager_dvm_cmd_update_device.updateDeviceADOM
#    ]
#}