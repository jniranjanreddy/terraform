terraform {
  backend "s3" {
    bucket = "tf-s3-jnrlabs" # Bucket name
    key    = "terraform/tfbackend" # This dir's are created under s3 bucket
    region = "ap-south-1"
  }
}
