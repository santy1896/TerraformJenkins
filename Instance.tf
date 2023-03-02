
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIATX5K52TFQJO7WWWV"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-3"]
  associate_public_ip_address = true
  key_name = "secondawsfile"
  count = 6

  tags = {
    Name ="Cluster"
    Environment = "DEV"
    OS = "Linux"
  }

  }
