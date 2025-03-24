variable "github_token" {
  description = "GitHub token"
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub repo owner"
}

variable "repo_name" {
  default = "ecs-python-app"
}


