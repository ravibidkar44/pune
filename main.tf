

provider "aws" {
  region = "us-east-1"
  profile = "Devops_ravi"
}

resource "aws_iam_user" "demo" {
  name = "mangesh"

}

resource "aws_iam_user" "demo1" {
  name = "omkar"
}

resource "aws_iam_group""cloud"{
name = "cloudblitz"
}

resource "aws_iam_user_group_membership" "add1" {
   user = aws_iam_user.demo.name
   groups = [
         aws_iam_group.cloud.name
       ]
}

resource "aws_iam_user_group_membership" "add2" {
    user = aws_iam_user.demo1.name
     groups = [
          aws_iam_group.cloud.name
         ]
}

resource "aws_s3_bucket" "bucky" {
  bucket = "cloudblitz-2"
  

}

