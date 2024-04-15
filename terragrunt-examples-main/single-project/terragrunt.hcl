terraform {
  source = "./terraform"
  before_hook "before_hook" {
    commands = ["apply"]
    execute  = ["echo", "error"]
  }
}

inputs = {}
