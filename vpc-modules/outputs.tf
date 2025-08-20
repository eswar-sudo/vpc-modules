output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc-modules.vpc_id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.vpc-modules.private_subnet_ids
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc-modules.public_subnet_ids
}

output "nat_gateway_ids" {
  description = "IDs of the NAT Gateways"
  value       = module.vpc-modules.nat_gateway_ids
}

output "igw_id" {
  description = "ID of the Internet Gateway"
  value       = module.vpc-modules.igw_id
}

output "route_table_ids" {
  description = "IDs of the route tables"
  value       = module.vpc-modules.route_table_ids
}
