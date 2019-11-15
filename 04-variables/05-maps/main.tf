variable "sample" {
  type    = "map"
  default = {
    course_name = "DevOps"
    timing = "6AMIST"
    trainer = "Raghu"
  }
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo Welcome to ${var.sample["course_name"]} training provided by ${var.sample["trainer"]} at ${var.sample["timing"]}"
  }
}
