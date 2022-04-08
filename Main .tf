provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "SuperMario" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["sg-09d7a8a90090b03af"]
  tags                   = var.instance_tags
}


