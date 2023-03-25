
terraform {
    cloud {
        organization = "gh-task" /// replace with your organization name
        workspaces {
          name = "ecs_tf" /// replace with your workspace name
        }
      }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1" # define region as per your account
}

resource "aws_instance" "example" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t3.micro"
  tags = {
          Name = "terraform-example"
         }
}
