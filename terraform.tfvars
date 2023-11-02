resource_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "ghaith.almujalled@eviny.no"
}

workingADOM = "Awsome-SDWAN"
device = {
  hub = {
    type         = "hub"
    count        = 1
    name         = "Oslo"
    description  = "Managed By Terraform"
    platform_str = "FortiGate-VM64-KVM"
    sn           = "FGVMEVDNB1HFA86B"
    vdom         = "root"
    adm_usr      = "admin"
    adm_pass     = ""
    mgmt_mode    = "fmg"
    deviceaction = "add_model"
    os_type      = "fos"
    os_ver       = "7.0"
    description  = "Managed By Terraform"
    latitude     = "60.37309"
    longitude    = "5.339208"
    ip           = "11.16.1.1"
    mr           = "0"
    patch        = "0"
    vars = {
      lan_ip_edu = {
          name  = "lan_ip_edu"
          desc  = "Managed By Terraform"
          value = "10.0.0.1/24"
      }
    }
    #    vars = (
    #      lan_ip_edu = {
    #         description = "lan_ip_edu"
    #        name = "lan_ip_edu"
    #        value = ""
    #    }
    #    )
    #   vars = (({
    #     lan_ip_edu       = ""
    #     lan_ip_fin       = ""
    #     mpls_wan_ip      = "62.97.204.123/28"
    #     hostname         = "hub01"
    #     profile          = "Gold"
    #     region           = "East"
    #     loopback         = "1.1.1.1/32"
    #     mpls_wan_gateway = "62.97.204.116/28"
    #     inbandwidth      = "5"
    #     shaping_profile  = "profile"
    #     outbandwidth     = "5"
    #   }))
    metadata = (
      {
        address = "Fjøsangerveien 65"
        org     = "Eviny Digital AS"
        email   = "ghaith.almujalled@eviny.no"
        phone   = "+4745402619"
    })
  }
  # spoke01 = {
  #   type         = "spoke"
  #   count        = 1
  #   name         = "storsenter-1"
  #   adm_usr      = "admin"
  #   adm_pass     = ""
  #   platform_str = "FortiGate-VM64-KVM"
  #   sn           = "FGVMEVYBU0WTJJC0"
  #   vdom         = "root"
  #   mgmt_mode    = "fmg"
  #   deviceaction = "add_model"
  #   os_type      = "fos"
  #   os_ver       = "7.0"
  #   description  = "Managed By Terraform"
  #   latitude     = "60.37309"
  #   longitude    = "5.339208"
  #   ip           = "172.16.2.1"
  #   mr           = "0"
  #   patch        = "0"
  #   vars = ({
  #     lan_ip_edu       = "10.0.0.1/24"
  #     lan_ip_fin       = "10.0.1.1/24"
  #     mpls_wan_ip      = ""
  #     hostname         = "spoke01"
  #     profile          = "Gold"
  #     region           = "East"
  #     loopback         = "2.2.2.2/32"
  #     mpls_wan_gateway = "62.97.204.124"
  #     inbandwidth      = "5"
  #     shaping_profile  = "profile"
  #     outbandwidth     = "5"
  #   })
  #   metadata = (
  #     {
  #       address = "Fjøsangerveien 65"
  #       org     = "Eviny Digital AS"
  #       email   = "ghaith.almujalled@eviny.no"
  #       phone   = "+4745402619"
  #   })
  # }
  # spoke02 = {
  #   type         = "spoke"
  #   count        = 1
  #   name         = "storsenter-2"
  #   adm_usr      = "admin"
  #   adm_pass     = ""
  #   platform_str = "FortiGate-VM64-KVM"
  #   sn           = "FGVMEVUPTJZQIMF7"
  #   vdom         = "root"
  #   mgmt_mode    = "fmg"
  #   deviceaction = "add_model"
  #   os_type      = "fos"
  #   os_ver       = "7.0"
  #   description  = "Managed By Terraform"
  #   latitude     = "60.37309"
  #   longitude    = "5.339208"
  #   ip           = "172.16.3.1"
  #   mr           = "0"
  #   patch        = "0"
  #   vars = ({
  #     lan_ip_edu       = ""
  #     lan_ip_fin       = ""
  #     mpls_wan_ip      = ""
  #     hostname         = "spoke01"
  #     profile          = "Gold"
  #     region           = "East"
  #     loopback         = "2.2.2.2/32"
  #     mpls_wan_gateway = "62.97.204.124"
  #     inbandwidth      = "5"
  #     shaping_profile  = "profile"
  #     outbandwidth     = "5"
  #   })
  #   metadata = (
  #     {
  #       address = "Fjøsangerveien 65"
  #       org     = "Eviny Digital AS"
  #       email   = "ghaith.almujalled@verja.no"
  #       phone   = "+4745402619"
  #   })
  # }
}

adomVars = {
  lan_ip_edu = {
    name         = "lan_ip_edu"
    description  = "LAN IP EDU"
    scopetype    = "adom"
    defaultValue = "10.0.0.1/24"
    #    dynamic_mapping = object({
    #      _scope = object({
    #        name = "${var.device.name}"
    #        vdom = "${var.device.vdom}"
    #      })
    #      value = "10.0.0.1/24"
    #    })
  }
  #  lan_ip_fin = {
  #    name          = "lan_ip_edu"
  #    description   = "LAN IP Finanace"
  #    scopetype     = "adom"
  #    default_value = "10.1.0.1/24"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "10.1.0.1/24"
  #    })
  #  }
  #  mpls_wan_ip = {
  #    name          = "mpls_wan_ip"
  #    description   = "MPLS WAN IP"
  #    scopetype     = "adom"
  #    default_value = "10.1.0.1/24"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "10.1.0.1/24"
  #    })
  #  }
  #  hostname = {
  #    name          = "hostname"
  #    description   = "Hostname"
  #    scopetype     = "adom"
  #    default_value = "fgt01"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "fgt01"
  #    })
  #  }
  #  profile = {
  #    name          = "profile"
  #    description   = "Site Profile"
  #    scopetype     = "adom"
  #    default_value = "Gold"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "Gold"
  #    })
  #  }
  #  region = {
  #    name          = "region"
  #    description   = "Site Region"
  #    scopetype     = "adom"
  #    default_value = "West"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "East"
  #    })
  #  }
  #  loopback = {
  #    name          = "loopback"
  #    description   = "Loopback IP Address"
  #    scopetype     = "adom"
  #    default_value = "1.1.1.1/32"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "1.1.1.1/32"
  #    })
  #  }
  #  mpls_wan_gatewayback = {
  #    name          = "mpls_wan_gateway"
  #    description   = "MPLS WAN Gateway IP Address"
  #    scopetype     = "adom"
  #    default_value = "2.2.2.2/32"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "2.2.2.2/32"
  #    })
  #  }
  #  inbandwidth = {
  #    name          = "inbandwidth"
  #    description   = "Inbound Bandwidth mpbs"
  #    scopetype     = "adom"
  #    default_value = "10"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "10"
  #    })
  #  }
  #  shaping_profile = {
  #    name          = "shaping_profile"
  #    description   = "Shaping Profile"
  #    scopetype     = "adom"
  #    default_value = "Shaping"
  #    dynamic_mapping = object({
  #      _scope = object({
  #        name = "${var.device.name}"
  #        vdom = "${var.device.vdom}"
  #      })
  #      value = "Shaping"
  #    })
  #  }
}

#cli-template-project-variables = [
#  "lan_ip_edu",
#  "lan_ip_fin",
#  "mpls_wan_ip",
#  "hostname",
#  "profile",
#  "region",
#  "loopback",
#  "mpls_wan_gateway",
#  "inbandwidth",
#  "shaping_profile",
#  "outbandwidth",
#]
