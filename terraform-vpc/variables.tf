variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}

variable "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
}

variable "container_name" {
  description = "Name of the container"
  type        = string
}


variable "container_port" {
  description = "Port on which the container will run"
  type        = number
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
}

variable "task_memory" {
  description = "Memory for the ECS task"
  type        = number
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = number
}

variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
  
}

variable "alb_port" {
  description = "Port for ALB to listen on"
  type        = number
  
}

variable "ecs_service_name" {
  description = "ECS service name"
  type        = string
  default     = "nginx-service"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "ecs_task_execution_role_arn" {
  description = "ARN of the existing IAM role for ECS task execution"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "Name of the existing ECS task execution IAM role"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  type        = list(string)
  default     = []
}

variable "private_route_table_id" {
  description = "ID of the private route table"
  type        = list(string)
  default     = []
}



