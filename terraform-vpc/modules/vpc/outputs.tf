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
  value = var.enable_nat_gateway ? aws_nat_gateway.nat_gateway[0].id : null
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

