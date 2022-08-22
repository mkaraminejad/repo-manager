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

resource "github_repository" "demo-1" {
  name             = "demo-1"
  description      = "A demo GitHub repository created by Terraform"
  visibility       = "public"
  # homepage_url     = "https://apoti.tech/"
  has_projects     = false
  has_wiki         = false
  has_downloads    = false
  has_issues       = true
  license_template = "mit"
  topics           = ["example", "public", "infrastructure-as-code", "operations", "terraform", "github"]
}