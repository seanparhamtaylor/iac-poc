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
    id              = data.external.env.result["GITHUB_APP_ID"]
    installation_id = data.external.env.result["GITHUB_APP_INSTALLATION_ID"]
    pem_file        = replace(data.external.env.result["GITHUB_APP_PEM_FILE"], "\\n", "\n")
  }
}
