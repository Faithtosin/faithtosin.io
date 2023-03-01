variable "github_repository" {
  description = "The name of the organization and repository to assume a role in AWS " 
  type = string
}
variable "codebuild_project_name" {
  description = "The name of the codebuild project"
  type = string
}

