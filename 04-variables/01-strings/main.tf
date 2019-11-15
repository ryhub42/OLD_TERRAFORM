variable "sample" {
  ## default = "Hello World!"
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}