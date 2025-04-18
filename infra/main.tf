
resource "aws_ecr_repository" "my_repo" {
    name = "my_repo"
    image_tag_mutability = "MUTABLE"
    image_scanning_configuration {
        scan_on_push = true
    }
    encryption_configuration {
      encryption_type = AES256
    }
  
}


resource "aws_vpc" "demo_vpc" {
   cidr_block = "10.0.0.0/16"
   ipv6_cidr_block = false
   
   tags = {
     name = "demo_vpc"
   }
 
}


resource "aws_subnet" "name" {
  vpc_id = aws_vpc.demo_vpc
  cidr_block = "10.0.0.0/24"
}