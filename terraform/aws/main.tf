provider "aws" {
  alias   = "account-1"
  profile = "account-1"
  region  = "us-east-2"
}

module "account-1" {
  source  = "lacework/config/aws"
  version = "0.5"
  lacework_integration_name = "account-1"

  providers = {
    aws = aws.account-1
  }
}

provider "aws" {
  alias   = "account-2"
  profile = "account-2"
  region  = "us-east-2"
}

module "account-2" {
  source  = "lacework/config/aws"
  version = "0.5"
  lacework_integration_name = "account-2"

  providers = {
    aws = aws.account-2
  }
}

provider "aws" {
  alias   = "account-3"
  profile = "account-3"
  region  = "us-east-2"
}

module "account-3" {
  source  = "lacework/config/aws"
  version = "0.5"
  lacework_integration_name = "account-3"

  providers = {
    aws = aws.account-3
  }
}