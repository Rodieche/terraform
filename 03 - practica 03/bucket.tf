resource "aws_s3_bucket" "proveedores" {
  count             = 6
  bucket            = "proveedores-${random_string.sufijo[count.index].id}"
  tags = {
    Owner           = "Rodolfo Echenique"
    Environmet      = "Dev"
    Office          = "Proveedires"
  }
}

resource "random_string" "sufijo" {
  count     = 6
  length    = 8
  special   = false
  upper     = false
  numeric   = false
}