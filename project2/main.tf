
module "my_ec2" {
  source = "../modules/ec2"
  ami_id = var.p2_ami_id
  instance_type = var.p2_instance_type
  public_subnet_id = module.network.public_subnet_id
  vpc_id = module.network.vpc_id
  my_ec2_name = var.p2_my_ec2_name
}



module "s3_bucket" {
  source = "../modules/s3"
  bucket_name = var.p2_bucket_name
}


module "dynamodb_table" {
  source = "../modules/dynamodb"
  table_name = var.p2_table_name
  dynamo_table_key_type = var.p2_dynamo_table_key_type
  dynamo_table_key = var.p2_dynamo_table_key
}


module "network" {
  source = "../modules/network"
  #region = var.p2_region    #for enpoints
  vpc_name = var.p2_vpc_name
  public_subnet_az = var.p2_public_subnet_az
  public_subnet_name = var.p2_public_subnet_name
  gateway_name = var.p2_gateway_name
}
