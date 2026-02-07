# locals.tf
locals {
  instance_sizes = {
    dev        = { web = "t2.micro", app = "t2.micro", db = "t2.small" }
    production = { web = "t3.large", app = "t3.large", db = "t3.xlarge" }
    staging    = { web = "t3.large", app = "t3.large", db = "t3.xlarge" }
  }
}