variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
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

variable "ecs_service_name" {
  description = "ECS service name"
  type        = string

}
variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
  default     = "my-app-alb"
}

variable "alb_port" {
  description = "Port for ALB to listen on"
  type        = number
  default     = 80
}

variable "execution_role_arn" {
  description = "execution role ARN"
  type        = string
}
