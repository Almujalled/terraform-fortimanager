terraform {
  required_providers {
    fortimanager = {
      source = "fortinetdev/fortimanager"
      version = "1.8.0"
    }
  }
}

provider "fortimanager" {
  hostname     = "fm01.verja.no"
  username     = "api_user"
  token         = "n8ru5gqzddqsypogz9g3ax87fg3j4sjz"
  insecure     = "true"
  scopetype    = "adom"
  adom         = "root"
}

resource "fortimanager_system_global" "trname" {
  workspace_mode = "normal"
}

resource "fortimanager_exec_workspace_action" "lockres" { # lock root ADOM
  scopetype      = "inherit"
  action         = "lockbegin"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
}

resource "fortimanager_object_firewall_vip" "trname" { # object resource
  scopetype  = "inherit"
  extintf    = "any"
  extip      = "1.1.1.1-2.1.1.1"
  mappedip   = ["12.1.1.1-13.1.1.1"]
  name       = "STIAN"
  depends_on = [fortimanager_exec_workspace_action.lockres]
}

resource "fortimanager_exec_workspace_action" "unlockres" { # save change and unlock root ADOM
  scopetype      = "inherit"
  action         = "lockend"
  target         = ""
  param          = ""
  force_recreate = uuid()
  comment        = ""
  depends_on     = [fortimanager_object_firewall_vip.trname]
} 