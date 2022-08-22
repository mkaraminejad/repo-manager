terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  owner        = "mkaraminejad"
  token        = var.github_token
}

resource "github_repository" "demo2" {
  name             = var.repo_name
  description      = "A demo GitHub repository created by Terraform"
  visibility       = var.visibility_type
  # homepage_url     = "https://apoti.tech/"
  has_projects     = false
  has_wiki         = false
  has_downloads    = false
  has_issues       = true
  license_template = "mit"
  topics           = ["example", "public", "infrastructure-as-code", "operations", "terraform", "github"]
}