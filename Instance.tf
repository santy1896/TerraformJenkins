
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIATX5K52TF53KZKS53"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-3"]
  associate_public_ip_address = true
  key_name = "secondawsfile"
  count = 3

  tags = {
    Name ="IndexerCluster"
    Environment = "DEV"
    OS = "Linux"
  }

  }
