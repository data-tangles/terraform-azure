locals {
  cmd01      = "Install-WindowsFeature AD-Domain-Services -IncludeAllSubFeature -IncludeManagementTools"
  cmd02      = "Install-WindowsFeature DNS -IncludeAllSubFeature -IncludeManagementTools"
  cmd03      = "Import-Module ADDSDeployment, DnsServer"
  cmd04      = "Install-ADDSForest -DomainName '${var.domain_name}' -DomainNetbiosName '${var.domain_netbios_name}' -DomainMode '${var.domain_mode}' -ForestMode '${var.domain_mode}' -DatabasePath '${var.database_path}' -SysvolPath '${var.sysvol_path}' -LogPath '${var.log_path}' -NoRebootOnCompletion:$false -Force:$true -SafeModeAdministratorPassword (ConvertTo-SecureString '${random_password.drsm_password.result}' -AsPlainText -Force)"
  powershell = "${local.cmd01}; ${local.cmd02}; ${local.cmd03}; ${local.cmd04}"
}

locals {
  common_tags = {
    environment = var.tag_environment
    purpose     = "AD Test Environment"
    createdby   = "Terraform (Personal)"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
    modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}