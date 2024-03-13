variable "p1_region" {
  description = "The AWS region where the EC2 instance will be deployed."
}

#ec2
variable "p1_ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type= string
}

variable "p1_instance_type" {
  description = "The type of EC2 instance to launch."
  type= string
}

variable "p1_public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be launched."
}


variable "p1_my_ec2_name" {
  description = "The name tag for the EC2 instance."
}


#s3
variable "p1_bucket_name" {
  description = "The name of the S3 bucket."
}



#dynamodb
variable "p1_table_name" {
  description = "The name of the DynamoDB table."
}

variable "p1_dynamo_table_key_type" {
  
}

variable "p1_dynamo_table_key" {
  
}
#network


variable "p1_vpc_name" {
  description = "The name of the VPC."
}


variable "p1_public_subnet_az" {
  description = "The availability zone for the public subnet."
}

variable "p1_public_subnet_name" {
  description = "The name of the public subnet."
}

variable "p1_gateway_name" {
  description = "project 1 gateway name"
}
