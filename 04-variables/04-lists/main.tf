variable "sample" {
  type = "list"
  default = ["sg1", "sg2", "sg3", "sg4"]
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample[3]}"
  }
}