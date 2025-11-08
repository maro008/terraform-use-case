locals {
  password = var.use_backup_password ? random_password.backup.result : random_password.bootstrap.result
}
