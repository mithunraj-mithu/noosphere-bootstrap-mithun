terraform {
  backend "s3" {
    bucket = "mybucket-terraform-mithunraj"
    key    = "test1"
    region = "ap-south-1"

  }

}