resource "aws_instance" "ec2-test" {
   ami = "ami-id"
   instance_type = "t3.micro"
   tags = {
     server = "web"
   }

   security_groups = [  ]
   count = 3
  
}

resource "aws_s3_bucket" "s3-buckets" {
  for_each = var.s3-bucket
  bucket = each.key
  tags = {
    stage = each.value
    name = each.key
  }
  
}
