terraform {

  required_version = ">= 1.2.5"
  backend "s3" {
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }

}

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias  = "london"
  region = "eu-west-2"
  default_tags {
    tags = {
      GithubTeam = "platform"
    }
  }
}


provider "aws" {
  alias  = "ireland"
  region = "eu-west-1"
}
