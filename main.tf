terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "gh-task"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
