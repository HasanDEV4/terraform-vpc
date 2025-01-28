variable "vpc_name" {
  description = "VPC ka naam"
  type        = string
}

variable "cidr_block" {
  description = "VPC ka CIDR block"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Public Subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private Subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Kya NAT Gateway enable karna hai?"
  type        = bool
  default     = false
}
