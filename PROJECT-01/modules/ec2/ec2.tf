resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name        = "${var.tags["project_name"]}-${var.tags["env"]}"
  }
}

