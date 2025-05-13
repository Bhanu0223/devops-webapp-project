provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu
  instance_type = "t2.micro"
  key_name      = "your-key"

  tags = {
    Name = "DevOpsAppServer"
  }
}

