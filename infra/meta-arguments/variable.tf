variable "s3-bucket" {
    description = "Map of bucket names and its environments"
    type = map()
    default = {
         "dev-bucket"= "development"
         "prod-bucket"="PRODUCTION"
    }
  
}

