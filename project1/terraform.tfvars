#region 
p1_region= "us-east-1" 


#ec2
p1_ami_id= "ami-0f403e3180720dd7e"
p1_instance_type= "t2.micro"
p1_public_subnet_id= "vpc-0ad85986c1076094f"

#p1_security_group_id= 
p1_my_ec2_name=  "project1 instance"


#s3_bucket
p1_bucket_name= "terraform-bucket-max-p1"


#dynamodb
p1_table_name= "max-table1"
p1_dynamo_table_key= "p1"
p1_dynamo_table_key_type= "S"

#network
#p1_vpc_cidr_block= "10.0.0.0/16"
p1_vpc_name= "max-vpc1"
#p1_public_subnet_cidr_block= "10.0.1.0/24"
p1_public_subnet_az= "us-east-1a"
p1_public_subnet_name= "public-subnet1"
p1_gateway_name= "max_gateway_p1"
