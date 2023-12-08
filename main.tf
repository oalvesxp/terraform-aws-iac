terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf-demo-aws"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name = "iac-alura"
#   user_data = <<-EOF
#         #!/bin/bash
#         cd /home/ubuntu
#         echo "<h1>Hello world!</h1></br><p>Created by Terraform.</p>" > index.html
#         nohup busybox httpd -f -p 8080 &
#   EOF

  tags = {
    Name = "vm-django"
    OS = "ubuntu"
  }
}
