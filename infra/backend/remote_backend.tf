resource "aws_s3_bucket" "terraform_state"{
    bucket = "terraform-state"
    versioning {      // versioning is parameter is deprecated now we have to create new resource of aws_s3_bucket_versioning, reference the s3 bucket resource
      enabled = true
    }

    lifecycle {
      prevent_destroy = true
    }
    
}


# resource "aws_s3_bucket_versioning" "bucket-versioning" {
  
# }


# after s3 native state locking feature dynamoDb resource is not required
resource "aws_dynamodb_table" "state-locking" {
  name = "state-locks"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "lockID"
    type = S
  }
}


#for terraform backend look it provider.tf file