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
