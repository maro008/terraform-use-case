output "password" {
  value     = local.password
  sensitive = true
}

output "bootstrap_password" {
  value     = random_password.bootstrap.result
  sensitive = true
}

output "backup_password" {
  value     = random_password.backup.result
  sensitive = true
}
