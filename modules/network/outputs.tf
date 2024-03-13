output "vpc_id" {
  description = "The ID of the VPC created"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet created"
  value       = aws_subnet.public_subnet.id
}
