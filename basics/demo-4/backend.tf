terraform {
  backend "s3" {
    bucket = "tf-backend-s3-jnrlabs" # Bucket name
    key    = "terraform/demo4" # This dir's are created under s3 bucket
    region = "ap-south-1"
  }
}