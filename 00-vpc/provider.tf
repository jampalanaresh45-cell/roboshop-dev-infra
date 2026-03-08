terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
<<<<<<< HEAD
      version = "6.35.1"
=======
      version = "6.16.0"
>>>>>>> f7af98f634f4d9a46e284366d254140b395c1fbd
    }
  }

  backend "s3" {
    bucket = "86s-remote-status"
<<<<<<< HEAD
    key    = "remote-dev-vpc"
    region = "us-east-1"
    use_lockfile = true
=======
    key    = "remote-dev-sg"
    region = "us-east-1"
    use_lockfile = false
>>>>>>> f7af98f634f4d9a46e284366d254140b395c1fbd
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}
