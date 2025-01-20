output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}
