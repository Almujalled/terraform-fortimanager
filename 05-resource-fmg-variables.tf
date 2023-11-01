#resource "fortimanager_object_fmg_variable" "createMetadata" {
#  description = "Metadata"
#  for_each    = toset(var.cli-template-project-variables)
#  name        = each.value
#  scopetype   = "adom"
#  adom        = var.workingADOM
#  value       = ""
#  depends_on = [
#    fortimanager_exec_workspace_action.lockADOM
#  ]
#}

resource "fortimanager_object_fmg_variable" "makeMetadata-lan_ip_edu" {

  description = "LAN IP EDU"
  name        = "lan_ip_edu"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "10.0.0.1/24" # Default value

  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "10.0.0.1/24"
    }
  }
  depends_on = [fortimanager_dvm_cmd_add_device.updateDevice]
}

resource "fortimanager_object_fmg_variable" "makeMetadata-lan_ip_fin" {
  description = "LAN IP FIN"
  name        = "lan_ip_fin"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "11.0.0.1/24" # Default value
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "11.0.0.1/24"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-lan_ip_edu]
}

resource "fortimanager_object_fmg_variable" "makeMetadata-mpls_wan_ip" {
  description = ""
  name        = "mpls_wan_ip"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "12.0.0.1/24" # Default value
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "12.0.0.1/24"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-lan_ip_fin]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-hostname" {
  description = ""
  name        = "hostname"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "FGT" # Default value
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "13.0.0.1/24"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-mpls_wan_ip]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-profile" {
  description = ""
  name        = "profile"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "Gold" # Default value
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "Silver"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-hostname]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-region" {
  description = "Reagion Variable"
  name        = "region"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "East" # Default value
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "West"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-profile]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-loopback" {
  description = ""
  name        = "loopback"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "1.1.1.1/32"
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "1.1.1.1/32"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-region]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-inbandwidth" {
  description = ""
  name        = "inbandwidth"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "5"
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "5"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-loopback]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-mpls_wan_gateway" {
  description = ""
  name        = "mpls_wan_gateway"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "2.2.2.2/32"
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "2.2.2.2/32"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-inbandwidth]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-shaping_profile" {
  description = ""
  name        = "shaping_profile"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "Gold"
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "Silver"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-mpls_wan_gateway]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-outbandwidth" {
  description = ""
  name        = "outbandwidth"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "10"
  dynamic "dynamic_mapping" {
    for_each = var.device
    content {
      _scope {
        name = dynamic_mapping.value.name
        vdom = "global"
      }
      value = "5"
    }
  }
  depends_on = [fortimanager_object_fmg_variable.makeMetadata-shaping_profile]
}
