terraform {
  backend "s3" {
    bucket         = "terraform1987980980"
    key            = "eretestterraformstate001/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }