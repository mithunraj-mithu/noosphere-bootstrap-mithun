variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key" {
  type    = string
  default = "test"
}

variable "aws_secret_key" {
  type    = string
  default = "My-VerySecure10x-Secret"
}

variable "localstack_endpoint" {
  type        = string
  default     = "http://localhost:4566"
  description = "Override AWS endpoints for LocalStack testing"
}

variable "project" {
  type    = string
  default = "devops-tech-test"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "db_name" {
  type    = string
  default = "appdb"
}

variable "db_username" {
  type    = string
  default = "appuser"
}

variable "instances" {
  description = "Map of EC2 instance configurations"
  type = map(object({
    instance_type = string
    #name          = string
  }))
  default = {}
}

# VPC variables

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "VPC CIDR must be a valid IPv4 CIDR block."
  }
}

variable "public_subnet" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "public subnet"
}



#Common tags for resources

variable "tags" {

  default = {
    Environment = "Dev"
    Squad       = "DevOps"
    Created_by  = "terraform"

  }

}



