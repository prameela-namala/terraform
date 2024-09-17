resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ami_info.id
  count = length(var.instance_names)
  instance_type = var.instance_names[count.index] == "mysql" ? "t3.small":"t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = var.instance_names[count.index]
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

ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
 tags = {
    Name = "allow_sshh"
 }


}