terraform {
  source = "./"
}

terraform {
  source = "./"
}

locals {
  labels = ["stack:terraform"]
}

inputs = {
  spacelift_stack_labels = toset(local.labels)  # Ensure this line correctly references the local variable
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
