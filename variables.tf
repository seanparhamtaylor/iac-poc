variable "repository_name" {
  description = "Name of the GitHub repository to create"
  type        = string
}

variable "repository_description" {
  description = "Description of the GitHub repository"
  type        = string
  default     = "Managed by Terraform"
}

variable "repository_visibility" {
  description = "Visibility of the GitHub repository (public or private)"
  type        = string
  default     = "private"
}

variable "github_app_id" {
  description = "ID of the GitHub App"
  type        = string
}

variable "github_app_installation_id" {
  description = "Installation ID of the GitHub App"
  type        = string
}

variable "github_app_pem_file" {
  description = "PEM file of the GitHub App"
  type        = string
}
