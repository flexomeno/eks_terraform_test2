terraform {
  backend "s3" {
    bucket = "terraform-files1"
    key    = "eks_test.tfstate"
    region = "us-west-2"
  }
}