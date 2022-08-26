terraform {
  backend "s3" {
    bucket         = "rahulsbackendtfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ceqtraining-rahul-b4"
  }
}