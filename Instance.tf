
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIAST76JMMJF7KE2IGQ"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-0e742cca61fb65051"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-1"]
  associate_public_ip_address = true
  key_name = "KeyGudoo"
  count = 3

  tags = {
    Name ="SERVER01"
    Environment = "DEV"
    OS = "UBUNTU"
    Managed = "IAC"
  }

  }
