resource "random_password" "ad_password" {
  length      = 14
  min_upper   = 2
  min_lower   = 2
  min_numeric = 2
  min_special = 2
}

resource "random_password" "drsm_password" {
  length      = 14
  min_upper   = 2
  min_lower   = 2
  min_numeric = 2
  min_special = 2
}

# Resource Group

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

# Networking

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

resource "azurerm_subnet" "ad_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_public_ip" "ad_pip" {
  count               = var.vm_count
  name                = "${var.vm_name_prefix}${count.index}-pubip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

resource "azurerm_network_interface" "vm_nic" {
  count               = var.vm_count
  name                = "${var.vm_name_prefix}${count.index}-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.ad_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ad_pip[count.index].id
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${azurerm_subnet.ad_subnet.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }

  security_rule {
    name                       = "AllowHomeInboundRDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = var.home_pip
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "ad_snet_nsg_asc" {
  subnet_id                 = azurerm_subnet.ad_subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
  depends_on                = [azurerm_subnet.ad_subnet]
}

# Virtual Machine

resource "azurerm_windows_virtual_machine" "addc_vm" {
  count               = var.vm_count
  name                = "${var.vm_name_prefix}${count.index}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = var.vm_size
  admin_username      = var.vm_user
  admin_password      = random_password.ad_password.result
  network_interface_ids = [
    azurerm_network_interface.vm_nic[count.index].id,
  ]
  tags = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.image_version
  }
}

resource "azurerm_virtual_machine_extension" "software" {
  depends_on = [azurerm_windows_virtual_machine.addc_vm]

  count                      = var.vm_count
  name                       = "install-gpmc"
  virtual_machine_id         = azurerm_windows_virtual_machine.addc_vm[count.index].id
  publisher                  = "Microsoft.Compute"
  type                       = "CustomScriptExtension"
  type_handler_version       = "1.9"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
       "commandToExecute": "powershell.exe -Command \"${local.powershell}\""
   }
  SETTINGS
}
