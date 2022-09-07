resource "aws_instance" "web" {
  ami                    = "ami-07ef4d849950da0b3"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-02afc752c16b2fa2e"]

  provisioner "remote-exec" {

    connection {
      host     = self.public_ip
      user     = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello World"
    ]

  }
}
