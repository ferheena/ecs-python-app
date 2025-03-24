output "ecr_repo_url" {
  value = aws_ecr_repository.python_app.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.ecs_cluster.name
}

output "ecs_service_name" {
  value = aws_ecs_service.python_service.name
}

output "public_url" {
  value = aws_ecs_service.python_service.network_configuration[0].assign_public_ip
}
