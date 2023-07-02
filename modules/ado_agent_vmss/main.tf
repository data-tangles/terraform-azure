data "terraform_remote_state" "networking" {
  backend = "azurerm"
  config = {
    key                  = "dev.networking.terraform.tfstate"
    container_name       = "dev-tfstate"
    resource_group_name  = "rg-storage-prod-san-01"
    storage_account_name = "stprodtfsan01"
  }
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_resource_group" "ado_vmss_rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

resource "azurerm_linux_virtual_machine_scale_set" "ado_vmss" {
  name                            = var.ado_vmss_name
  resource_group_name             = azurerm_resource_group.ado_vmss_rg.name
  location                        = azurerm_resource_group.ado_vmss_rg.location
  sku                             = var.vmss_size
  instances                       = var.instances
  overprovision                   = false
  upgrade_mode                    = "Manual"
  disable_password_authentication = false
  admin_username                  = var.vm_user
  admin_password                  = random_password.password.result
  single_placement_group          = false
  tags                            = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.image_version
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadOnly"
    diff_disk_settings {
      option = "Local"
    }
  }

  network_interface {
    name    = "${var.ado_vmss_name}-nic"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = data.terraform_remote_state.networking.outputs.vm_snet_id
    }
  }
}