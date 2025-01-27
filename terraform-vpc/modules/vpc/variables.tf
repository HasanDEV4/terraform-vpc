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

variable "public_subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = list(string)
} 


