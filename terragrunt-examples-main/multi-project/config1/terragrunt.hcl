terraform {
  source = "./"
}

inputs = {}

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

before_hook "switch_tf_version" {
  commands = [get_terraform_command()]
  execute  = ["tfenv", "install", "1.5.5"]
}
