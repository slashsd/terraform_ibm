terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    aap = {
      source = "ansible/aap"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      ManagedBy = "HCP Terraform"
    }
  }
}

# Configure AAP Provider
provider "aap" {
  host  = "https://caap.fvz.ansible-labs.de" # Also supports AAP_HOSTNAME environment variable
  token = var.aap_token # Use a variable or environment variable
}
