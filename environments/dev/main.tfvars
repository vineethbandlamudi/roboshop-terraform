env = "dev"
ip_configuration_subnet_id = "/subscriptions/721ea30a-1562-42c5-89d7-30aeb9ce9522/resourceGroups/project-setup/providers/Microsoft.Network/virtualNetworks/roboshop-vnet/subnets/default"
storage_image_reference_id = "/subscriptions/721ea30a-1562-42c5-89d7-30aeb9ce9522/resourceGroups/project-setup/providers/Microsoft.Compute/images/test-vm-project-image-20260306200821"
zone_name = "vdevops.io"
network_security_group_id = "/subscriptions/721ea30a-1562-42c5-89d7-30aeb9ce9522/resourceGroups/project-setup/providers/Microsoft.Network/networkSecurityGroups/allow-all"

databases = {
    monogodb = {
      rg_name = "ukwest"
    }
    rabbitmq = {
      rg_name = "ukwest"
    }
    mysql = {
      rg_name = "ukwest"
    }
    redis = {
      rg_name = "ukwest"
    }
  }

applications = {
    catalogue = {
      rg_name = "ukwest"
    }
    user = {
      rg_name = "ukwest"
    }
    cart = {
      rg_name = "ukwest"
    }
    payment = {
      rg_name = "ukwest"
    }
    shipping = {
      rg_name = "ukwest"
    }
    frontend = {
      rg_name = "ukwest"
    }
  }

rg_name = {
  ukwest = {
    location = "UK West"
  }
}

aks = {
  main-dev = {
    rg_name = "ukwest"
  }
}
