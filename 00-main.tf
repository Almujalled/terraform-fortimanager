terraform {
  required_providers {
    fortimanager = {
      source  = "fortinetdev/fortimanager"
      version = "1.10.0"
    }
  }
}
provider "fortimanager" {
  hostname   = "fmg.tacokveld.no"
  username   = "api_user"
  token      = "3ziqufzj1nqnnrgcxc5cxu7t4ybf44gh"
  insecure   = "false"
  cabundlefile = "./fmg-tacokveld-no.pem"
  scopetype  = "adom"
  logsession = true
  presession = ""
}