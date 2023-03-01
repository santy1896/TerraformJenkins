
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIA3XJDWKEDDTQYZUIT"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-4"]
  associate_public_ip_address = true
  key_name = "searchheadkey"
  count = 3

  tags = {
    Name ="TestingServer"
    Environment = "DEV"
    OS = "Linux"
  }

  }
