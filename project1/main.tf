
module "my_ec2" {
  source = "../modules/ec2"
  ami_id = var.p1_ami_id
  instance_type = var.p1_instance_type
  public_subnet_id = module.network.public_subnet_id
  vpc_id = module.network.vpc_id
  my_ec2_name = var.p1_my_ec2_name
}



module "s3_bucket" {
  source = "../modules/s3"
  bucket_name = var.p1_bucket_name
}


module "dynamodb_table" {
  source = "../modules/dynamodb"
  table_name = var.p1_table_name
  dynamo_table_key_type = var.p1_dynamo_table_key_type
  dynamo_table_key = var.p1_dynamo_table_key
}


module "network" {
  source = "../modules/network"
  #region = var.p1_region    #for enpoints
  vpc_name = var.p1_vpc_name
  public_subnet_az = var.p1_public_subnet_az
  public_subnet_name = var.p1_public_subnet_name
  gateway_name = var.p1_gateway_name
}
