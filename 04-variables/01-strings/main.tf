variable "sample" {
  default = "Hello from inside the script!"
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}