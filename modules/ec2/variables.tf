
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type= string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type= string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be launched."
}


variable "my_ec2_name" {
  description = "The name tag for the EC2 instance."
}

variable "vpc_id" {
  description = "VPC ID"
}