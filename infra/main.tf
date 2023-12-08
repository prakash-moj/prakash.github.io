terraform {
  backend "s3" {
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

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "@£?"
}