terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}
resource "aws_iam_user" "user1"{
 name = "Cadette"
}
# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "Lightsail" {
  name              = "Jean"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  #key_pair_name     = "some_key_name"
  tags = {
    env = "dev"
  }
}