variable "sample" {
  type    = list(string)
  default = ["apple", "banana"]
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample[0]}"
  }
}
