resource "aws_s3_bucket" "terraform_state" {
    bucket = "mybucketnewtestingfirst01"
    acl    = "private"
    region = "us-east-1"
    versioning {
        enabled = true
    }

    tags = {
        Name = "mybucketnewtestingfirst01"
    }
}

# Optional: DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "my-terraform-lock-table-akhi"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "my-terraform-lock-table-akhi"
  }
}
