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
      name = "ecs_tf"
    }
  }
}

resource "aws_instance" "example" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t3.micro"
  tags = {
          Name = "terraform-example"
         }
}

