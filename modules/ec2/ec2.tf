resource "aws_security_group" "my_sec_gp" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}


# Configue the ec2 resource
resource "aws_instance" "my_ec2"{
    ami= var.ami_id
    instance_type= var.instance_type
    subnet_id              = var.public_subnet_id
    vpc_security_group_ids     = [aws_security_group.my_sec_gp.id]
    associate_public_ip_address = true
    tags = {
      Name = var.my_ec2_name
    }
}
