provider "random" {}

resource "random_password" "admin" {
  length  = 16
  special = true
}

output "admin_password" {
  value = random_password.admin.result
  sensitive = true
}
