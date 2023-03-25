terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gh-task"
    token = "hpnMvsl2GS8Mhg.atlasv1.431gO6ySrb4zpiqbSrFypkgbFf8ceqNr5b7uAUQNjsyJ34qn1YeKszGuFzydEWOY9ug"
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

