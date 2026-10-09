provider "aws" {
  region = "us-east-1"
}

module "VPC" {
  source = "./vpc"

}