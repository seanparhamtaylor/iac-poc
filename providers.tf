terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  # app_auth {
  #   id              = "1379247"
  #   installation_id = "70341683"
  #   pem_file = file("/Users/seantaylor/Workspace/iac-poc-project/iac-poc/spt-iac-bot.2025-06-07.private-key.pem")
  # }
}

# Add this to enable debug logging
provider "github" {
  alias = "debug"
  # app_auth {
  #   id              = "1379247"
  #   installation_id = "70341683"
  #   pem_file        = file("/Users/seantaylor/Workspace/iac-poc-project/iac-poc/spt-iac-bot.2025-06-07.private-key.pem")
  # }
}
