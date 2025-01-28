output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway[0].id
  description = "The ID of the NAT Gateway."
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
  description = "The ID of the private route table."
}


