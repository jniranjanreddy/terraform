provider "aws" {
  #region                  = "ap-south-1" # Arguments #
  #region                  = "us-east-2" # Arguments #
  region                   = "ap-south-1"
  shared_credentials_files = ["/root/.aws/credentials"]
  #  profile                    = "pocaws"
}

# terraform {
#   required_providers {
#     postgresql = {
#       source  = "cyrilgdn/postgresql"
#       version = ">= 1.11.2"
#     }
#   }
# }