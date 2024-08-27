terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }

#   backend "s3" {
#         bucket = "ConnMindsBackendBucket" # This bucket needs to be created before it can be used to store statefile
#         region                   = "ap-southwest-2"
#     }
}

provider "aws" {
  region                   = "ap-southwest-2"
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode"
}