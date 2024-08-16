terraform {
  source = "./terraform"
}

locals {
  stack_vars = {
    labels           = ["stack:terraform"]
  }
}

inputs = {
  spacelift_stack_labels                  = toset(local.stack_vars.labels)
}
