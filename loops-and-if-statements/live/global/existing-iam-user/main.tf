provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "existing_user" {
  # You should change this to the username of an IAM user that already
  # exists so you can practice using the terraform import command
  name = "your_AWS_user_name_here"
}

