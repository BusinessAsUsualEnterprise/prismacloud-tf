terraform {
  required_version = ">=0.12.0"

  # backend "s3" {  # Remove for local backend
  #   region  = "us-east-2"
  #   profile = "default"
  #   key     = "terraformstatefile_prisma"
  #   bucket  = "test123_abc_123"  # Prepare in advance manual in aws
  # }
}
