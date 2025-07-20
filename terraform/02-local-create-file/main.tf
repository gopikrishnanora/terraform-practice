resource "local_file" "my_file" {
  content  = "Welcome to the Terraform tutorials!"
  filename = "./welcome.txt"
}
