
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIA3XJDWKEDL3N4MGF7"
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
