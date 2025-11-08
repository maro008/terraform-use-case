## Terraform-use-case 

## Overview 

This module will allow you to generate two random passwords upon initial creation (bootstrap/backup) bootstrap is used by default.
You can rotate the backup password and set it as the main. 

## Usage. 

1. Calling the module.
```bash 
module "password_management" {
  source                           = "./module"
}
```


2. If you wish to rotate the backup password. You can update it's version. 
```
module "password_management" {
  source                           = "./module"
  rotate_backup_password_version   = 1
}
```

3. You can swap the backup to be the main password. 
```bash 
module "password_management" {
  source                           = "./module"
  rotate_backup_password_version   = 1
}
```


4. If you wish to use this with another module. You can call the password value.
```bash
resource_that_password =  module.password_management.password
```
