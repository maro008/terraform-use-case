variable "use_backup_password" {
  description = "When set to true it will become the main password used by: local.password"
  type        = bool
  default     = false
}

variable "rotate_backup_password_version" {
  description = "Changing this value trigger new password to be generated."
  type        = string
  default     = "0"
}

variable "length" {
  description = "Password length."
  type        = number
  default     = 18
}


##### Build Resources ######
resource "random_password" "bootstrap" {
  length  = var.length
  special = true
}

resource "random_password" "backup" {
  length  = var.length
  special = true

  keepers = {
    rotate_backup_password_version = var.rotate_backup_password_version
  }
}
