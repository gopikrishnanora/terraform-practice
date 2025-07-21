terraform {
  required_providers {
    azure = {
      version = ">= 2.7.0"
      source = "hashicorp/azure"
    }
  }

  required_providers {
    gcp = {
      version = ">= 2.7.0"
      source = "hashicorp/gcp"
    }
  }

  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }  
}
