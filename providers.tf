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

# Confirue AAP Provider
provider "aap" {
  host = "https://caap.fvz.ansible-labs.de" # Also supports AAP_HOSTNAME environment variable

  # Token authentication is recommended
  token = "a480507ea1bbf6e967348d47cd969a0c147422ea" # Also supports AAP_TOKEN environment variable
}
