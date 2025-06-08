terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  app_auth {
    id              = env.GITHUB_APP_ID
    installation_id = env.GITHUB_APP_INSTALLATION_ID
    pem_file        = env.GITHUB_APP_PEM_FILE
  }
}
