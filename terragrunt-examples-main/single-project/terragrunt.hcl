locals {
  relative_path = get_path_from_repo_root()
}

terraform {
  source = "./terraform"
}
