resource "aws_codebuild_project" "build_python_app" {
  name = "python-app-build"
  service_role = aws_iam_role.codebuild_role.arn
 
  artifacts {
    type = "NO_ARTIFACTS"
  }
 
  environment {
    compute_type    = "BUILD_GENERAL1_SMALL"
    image           = "aws/codebuild/standard:5.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }
 
  source {
    type      = "GITHUB"
    location  = "https://github.com/${var.github_owner}/${var.repo_name}.git"
    buildspec = "buildspec.yml"
  }
 
  source_version = "main"
}
