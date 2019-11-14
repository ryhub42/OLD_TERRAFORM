resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08bed8525f85d783e", "sg-0f8ef2eb8f766f7d1"]

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
      "sh /tmp/Shell-Scripts/studentapp/install.sh",
    ]
  }
}
