locals {
  repo_root = get_path_from_repo_root()
}

inputs = {
  repo_root_path = local.repo_root
}

terraform {
  source = "./terraform"
}
