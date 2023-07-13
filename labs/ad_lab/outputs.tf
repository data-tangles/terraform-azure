output "ad_password" {
  value     = random_password.ad_password.result
  sensitive = true
}

output "drsm_password" {
  value     = random_password.drsm_password.result
  sensitive = true
}