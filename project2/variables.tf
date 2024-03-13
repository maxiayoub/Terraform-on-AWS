variable "p2_region" {
  description = "The AWS region where the EC2 instance will be deployed."
}

#ec2
variable "p2_ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type= string
}

variable "p2_instance_type" {
  description = "The type of EC2 instance to launch."
  type= string
}

variable "p2_public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be launched."
}


variable "p2_my_ec2_name" {
  description = "The name tag for the EC2 instance."
}


#s3
variable "p2_bucket_name" {
  description = "The name of the S3 bucket."
}



#dynamodb
variable "p2_table_name" {
  description = "The name of the DynamoDB table."
}

variable "p2_dynamo_table_key_type" {
  
}

variable "p2_dynamo_table_key" {
  
}
#network


variable "p2_vpc_name" {
  description = "The name of the VPC."
}


variable "p2_public_subnet_az" {
  description = "The availability zone for the public subnet."
}

variable "p2_public_subnet_name" {
  description = "The name of the public subnet."
}

variable "p2_gateway_name" {
  description = "project 1 gateway name"
}
