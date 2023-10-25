resource "fortimanager_exec_workspace_action" "unlockADOM" {
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on = [
    #  fortimanager_object_cli_template.Edge-Overlay,
    #  fortimanager_object_cli_template.Edge-Routing,
    #  fortimanager_object_cli_template.Edge-Underlay,
    #  fortimanager_object_cli_template.Hub-MultiRegion,
    #  fortimanager_object_cli_template.Hub-Overlay,
    #  fortimanager_object_cli_template.Hub-Routing,
    #  fortimanager_object_cli_template.Hub-Underlay,
    #  fortimanager_object_cli_template.Project,
    # fortimanager_object_cli_templategroup.Edge-Template,
    # fortimanager_object_cli_templategroup.Hub-Template
    #  fortimanager_exec_workspace_action.unlockDevice,
    #  fortimanager_exec_workspace_action.unlockProVars
    #  fortimanager_object_fmg_variable.makeMetadata-outbandwidth,
    #fortimanager_dvmdb_adom.manageADOM,
    #fortimanager_dvm_cmd_add_device.addDevice,
  fortimanager_dvm_cmd_add_device.addDevice]
}
##resource "fortimanager_exec_workspace_action" "unlockDevice" {
##  scopetype      = "adom"
##  adom           = var.workingADOM
##  action         = "lockend"
##  target         = "dev"
##  param          = var.deviceInfo.name
##  force_recreate = uuid()
##  comment        = ""
##  depends_on = [
##    fortimanager_exec_workspace_action.unlockProVars,
##    fortimanager_json_generic_api.authDevice
##  ]
##}
##resource "fortimanager_exec_workspace_action" "unlockPackage" {
##  scopetype      = "adom"
##  adom           = var.workingADOM
##  action         = "lockend"
##  target         = "pkg"
##  param          = var.pkg
##  force_recreate = uuid()
##  comment        = ""
##  #depends_on = [ 
##  # ]
##}
##resource "fortimanager_exec_workspace_action" "unlockProVars" {
##  scopetype      = "adom"
##  adom           = var.workingADOM
##  action         = "lockend"
##  target         = "obj"
##  for_each       = toset(var.cli-template-project-variables)
##  param          = each.value
##  force_recreate = uuid()
##  comment        = ""
##  depends_on = [
##    fortimanager_object_fmg_variable.makeMetadata-hostname,
##    fortimanager_object_fmg_variable.makeMetadata-inbandwidth,
##    fortimanager_object_fmg_variable.makeMetadata-lan_ip_edu,
##    fortimanager_object_fmg_variable.makeMetadata-lan_ip_fin,
##    fortimanager_object_fmg_variable.makeMetadata-loopback,
##    fortimanager_object_fmg_variable.makeMetadata-mpls_wan_gateway,
##    fortimanager_object_fmg_variable.makeMetadata-mpls_wan_ip,
##    fortimanager_object_fmg_variable.makeMetadata-outbandwidth,
##    fortimanager_object_fmg_variable.makeMetadata-profile,
##    fortimanager_object_fmg_variable.makeMetadata-region,
##    fortimanager_object_fmg_variable.makeMetadata-shaping_profile
##  ]
##}
#
##target - Lock an entire ADOM: keep the argument empty, a device: dev, a specific object : obj or a specific package: pkg.
##param - the target param will be locked or unlocked.