terraform {
  required_providers {
    fortimanager = {
      source  = "fortinetdev/fortimanager"
      version = "1.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
provider "fortimanager" {
  hostname   = "fm01.verja.no"
  username   = "api_user"
  token      = "n8ru5gqzddqsypogz9g3ax87fg3j4sjz"
  insecure   = "true"
  scopetype  = "adom"
  logsession = true
  presession = ""
}

provider "random" {
  # Configuration options
}
