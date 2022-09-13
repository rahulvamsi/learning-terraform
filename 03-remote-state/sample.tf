#terraform {
#  backend "s3" {
#    bucket = "terraform-rb66"
#    key    = "sample1/terraform.tfstate"
#    region = "us-east-1"
#  }
#}

resource "aws_instance" "sample" {

  ami           = "ami-05403c07e1c840e24"
  instance_type = "t2.micro"
}


