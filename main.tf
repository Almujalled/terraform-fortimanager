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
resource "fortimanager_exec_workspace_action" "lockADOM" {
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on = [
    fortimanager_system_global.workspace
  ]
}
resource "fortimanager_exec_workspace_action" "unlockADOM" {
  scopetype      = "adom"
  adom           = var.workingADOM
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}