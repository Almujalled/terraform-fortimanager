terraform {
  required_providers {
    fortimanager = {
      source  = "fortinetdev/fortimanager"
      version = "1.8.0"
    }
  }
}

provider "fortimanager" {
  hostname  = "fm01.verja.no"
  username  = "api_user"
  token     = "n8ru5gqzddqsypogz9g3ax87fg3j4sjz"
  insecure  = "true"
  scopetype = "adom"
}

resource "fortimanager_system_global" "workspace" {
  workspace_mode = "normal"
}

resource "fortimanager_exec_workspace_action" "lockGNS3" { # lock root GNS3
  scopetype      = "adom"
  adom           = "GNS3"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on = [
    fortimanager_system_global.workspace
  ]
}

resource "fortimanager_exec_workspace_action" "lockROOT" { # lock root ADOM
  scopetype      = "adom"
  adom           = "root"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on = [
    fortimanager_system_global.workspace
  ]
}

resource "fortimanager_exec_workspace_action" "unlockROOT" { # save change and unlock root ADOM
  scopetype      = "adom"
  adom           = "root"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
#  depends_on = [
#    fortimanager_dvm_cmd_add_device.authDevice
#  ]
}

resource "fortimanager_exec_workspace_action" "unlockGNS3" { # save change and unlock root GNS3
  scopetype      = "adom"
  adom           = "GNS3"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
# depends_on = [
#   fortimanager_object_cli_templategroup.Hub-Template,
#   fortimanager_object_cli_templategroup.Edge-Template,
#   fortimanager_json_generic_api.updateDeviceDB
# ]
}