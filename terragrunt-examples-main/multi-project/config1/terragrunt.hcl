terraform {
  source = "./"
}

locals {
  name = "test"
  labels = ["stack:terraform"]
}

inputs = {
  spacelift_stack_name = local.name
  spacelift_stack_labels = local.labels
}

remote_state {
  backend = "s3"
  config = {
    bucket                 = "terragrunt-spacelift-state-test1"
    key                    = "config1/terraform.tfstate"
    region                 = "eu-west-1"
    encrypt                = true
    dynamodb_table         = "spacelift-terragrunt-dynamodb"
    skip_bucket_versioning = true
  }
}
