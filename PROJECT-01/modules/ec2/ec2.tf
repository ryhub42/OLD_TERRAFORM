resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name        = "${var.tags["project_name"]}-${var.tags["env"]}"
  }
}

provisioner "remote-exec" {
  connection {
    type = "ssh"
    user = "root"
    password = "DevOps321"
    host = self.public_ip
  }

  inline = [
    "cd /tmp",
    "git clone https://github.com/ryhub42/Shell-Scripts.git",
    "sh /tmp/Shell-Scripts/studentapp/webapp.sh" ${var.RDS_USERNAME},${var.RDS_PASSWORD} ${var.RDS_ENDPOINT} ${var.RDS_DBNAME}
  ]
}
}