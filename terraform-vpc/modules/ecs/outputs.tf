output "ecs_cluster_id" {
  description = "ECS Cluster ID"
  value       = aws_ecs_cluster.nginx.id
}

output "ecs_service_name" {
  description = "ECS Service Name"
  value       = aws_ecs_service.nginx.name
}

output "ecs_task_definition_arn" {
  description = "ECS Task Definition ARN"
  value       = aws_ecs_task_definition.nginx.arn
}
