output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "private_route_table_id" {
  value = module.vpc.private_route_table_id
}
