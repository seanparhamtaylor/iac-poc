# Terraform GitHub Repository Manager

This Terraform configuration manages GitHub repositories using the GitHub provider with GitHub App authentication.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed (version 1.0.0 or later)
- A GitHub App with appropriate permissions
- The GitHub App installed in your organization/account

## GitHub App Setup

1. Create a new GitHub App in your organization:
   - Go to your organization settings
   - Navigate to "Developer settings" > "GitHub Apps"
   - Click "New GitHub App"
   - Configure the following permissions:
     - Repository permissions:
       - Administration: Read & write
       - Contents: Read & write
       - Metadata: Read-only

2. After creating the app:
   - Note down the App ID
   - Generate a private key (PEM file) and save it securely
   - Install the app in your organization/account
   - Note down the Installation ID

## Setup

You can configure the GitHub App authentication using either environment variables or a tfvars file.

### Using Environment Variables

Set the following environment variables:
```bash
export GITHUB_APP_ID="your-app-id"
export GITHUB_APP_INSTALLATION_ID="your-installation-id"
# Use the actual PEM content (including BEGIN and END lines)
export GITHUB_APP_PEM_FILE="-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA1c7+9z5Pad7OejecsQ0buoLoWcP1mJ12GtoXoGMr1QBuy+mi
...
-----END RSA PRIVATE KEY-----"
```

### Using tfvars file (Alternative)

1. Copy the example variables file:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```
2. Edit `terraform.tfvars` and add your GitHub App configuration:
   - `github_app_id`: Your GitHub App ID
   - `github_app_installation_id`: The Installation ID
   - `github_app_pem_file`: Path to your private key file
   - Configure other repository settings as needed

## Usage

Initialize Terraform:
```bash
terraform init
```

Preview changes:
```bash
terraform plan
```

Apply changes:
```bash
terraform apply
```

Destroy resources:
```bash
terraform destroy
```

## Variables

The following variables can be set either through environment variables or tfvars file:

### GitHub App Configuration
- `GITHUB_APP_ID` or `github_app_id`: Your GitHub App ID
- `GITHUB_APP_INSTALLATION_ID` or `github_app_installation_id`: GitHub App Installation ID
- `GITHUB_APP_PEM_FILE` or `github_app_pem_file`: GitHub App private key content (PEM format) or path to the file

### Repository Configuration
- `repository_name`: Name of the GitHub repository to create
- `repository_description`: Description of the repository (default: "Managed by Terraform")
- `repository_visibility`: Repository visibility (default: "private")

## Security Note

Never commit your `terraform.tfvars` file or private key file as they contain sensitive information. They are already included in `.gitignore`.

When using environment variables, ensure they are properly secured in your CI/CD environment and not exposed in logs or output.