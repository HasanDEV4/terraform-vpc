vpc_name             = "Dev-VPC"
cidr_block           = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
container_name       = "nginx"
container_image      = "nginx:latest"
container_port       = 80
task_cpu             = 256 # 256 CPU units (0.25 vCPU)
task_memory          = 512 # 512 MiB
ecs_cluster_name     = "dev-ecs-cluster"
environment          = "dev"
alb_name             = "dev_alb"
region               = "us-east-1"
alb_port             = 80
azs                  = ["us-east-1a", "us-east-1b"]
ecs_task_execution_role_arn   = "arn:aws:iam::851725275673:role/ecsTaskExecutionRole"
ecs_task_execution_role_name = "ecsTaskExecutionRole"

