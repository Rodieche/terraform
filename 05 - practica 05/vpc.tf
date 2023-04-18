resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    name = "prueba"
    env  = "Dev"
  }
}

# Crear otro recurso para otra region

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_OHIO"
    name = "prueba"
    env  = "Dev"
  }
  provider = aws.ohio # Se especifica el provider
}

variable "virginia_cidr" {
  default = "10.10.0.0/16"  
}

variable "ohio_cidr" {
  default = "10.20.0.0/16"  
}