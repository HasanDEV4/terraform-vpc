/*terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    # Add your S3 backend configuration here
  }
}*/

module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = var.vpc_name
  cidr_block           = var.cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  nat_gateway_id          = aws_nat_gateway.nat_gateway.id
  private_route_table_id  = aws_route_table.private_route_table.id
  enable_nat_gateway     = true
}

module "ecs" {
  source             = "./modules/ecs"
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  ecs_cluster_name   = var.ecs_cluster_name
  container_name     = var.container_name
  container_port     = var.container_port
  container_image    = var.container_image
  task_memory        = var.task_memory
  task_cpu           = var.task_cpu
  ecs_service_name   = var.ecs_service_name
  ecs_task_execution_role_arn = var.ecs_task_execution_role_arn
  ecs_task_execution_role_name = var.ecs_task_execution_role_name

}

