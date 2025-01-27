variable "vpc_name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "nat_gateway_id" {
  type = list(string)
}

variable "private_route_table_id" {
  type = list(string)
}







