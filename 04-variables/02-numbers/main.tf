variable "sample" {
  default = 10
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}