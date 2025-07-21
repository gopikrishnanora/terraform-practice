terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

#  backend "local" {
#    path = "terraform.tfstate"
#  }
#}

# provider "azurerm" {
#   features {}
#   # Optionally set:
#   # subscription_id = "xxxx-xxxx-xxxx-xxxx"
#   # tenant_id       = "xxxx-xxxx-xxxx-xxxx"
# }

# provider "aws" {
#   region = "us-east-1"
#   # Optionally set:
#   # access_key = "YOUR_AWS_ACCESS_KEY"
#   # secret_key = "YOUR_AWS_SECRET_KEY"
#   # profile    = "default"
# }

# provider "google" {
#   project = "your-gcp-project-id"
#   region  = "us-central1"
#   # credentials = file("path/to/service-account.json")
# }

