terraform {
  # Define a before-hook to run before the 'apply' command
  before_hook "break_json_output" {
    commands     = ["apply", "plan"]
    execute      = ["echo", "{error}"]
  source = "./terraform"
}

inputs = {}
