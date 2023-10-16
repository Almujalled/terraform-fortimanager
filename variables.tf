variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = "project-alpha",
    environment = "dev"
  }
}

#variable "cli-template-project" {
#  description = "Project CLI Template - Jinja"
#  type        = string
#  default     = "Project Template goes here!"
#}



variable "cli-template-project-variables" {
  description = "Project Variables"
  type        = list(string)
  default = [
    "lan_ip_edu",
    "lan_ip_fin",
    "mpls_wan_ip",
    "hostname",
    "profile",
    "region",
    "loopback",
    "mpls_wan_gateway",
  ]
}

variable "workingADOM" {
  description = "ADOMs"
  type        = list(string)
  default     = [
    "createdByTerraform",
    "root",
  ]
}