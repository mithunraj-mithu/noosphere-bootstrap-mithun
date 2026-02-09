variable "region" {
  type    = string
  default = "us-east-1"
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

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"

}



variable "instances" {
  description = "Map of EC2 instance configurations"
  type = map(object({
    instance_type = string
    name          = string
  }))
  default = {}

}


#Common tags for resources

variable "tags" {

  default = {
    Environment = "Dev"
    Squad       = "DevOps"
    Created_by  = "terraform"

  }

}




