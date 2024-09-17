resource "aws_instance" "expense" {
  for_each = var.instances  
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = each.key
  }

  provisioner "local-exec" {
    command = "echo  ${self.private_ip}"
  }

}

resource "aws_security_group" "allow_ssh_terraform"  {
  name        = "allow_sshhhhh"
  description = "Allow ssh open port number 22"

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

dynamic ingress {

    for_each = var.ingress_rules
    content {
    from_port        = ingress.value["from_port"]
    to_port          = ingress.value["to_port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
 tags = {
    Name = "allow_sshhhhh"
 }


}