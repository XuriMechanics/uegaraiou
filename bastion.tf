resource "aws_instance" "bastion" {
  ami           = "ami-03c7d01cf4dedc891"
  instance_type = "t2.micro"
  key_name      = "KeyPair"
  subnet_id     = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.bastion_sg.id,
  ]

  tags = {
    Name = "bastion"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo echo 'GatewayPorts yes' >> /etc/ssh/sshd_config
              sudo service sshd restart
              EOF

  depends_on = [aws_subnet.public_subnet]
}
