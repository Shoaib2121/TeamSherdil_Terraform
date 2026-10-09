terraform {
  backend "s3" {
    bucket       = "shoaib-10-9-2026-678878256416-us-east-1-an"
    key          = "prod/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}